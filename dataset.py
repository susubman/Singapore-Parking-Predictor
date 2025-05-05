from sklearn.preprocessing import MinMaxScaler
from dotenv import load_dotenv

import pandas as pd
import psycopg
import os


load_dotenv()


# Checks and labels missing parking availability data
def check_missing(df):
    df_resampled = df.resample('1h').asfreq()
    df_resampled['missing_indicator'] = df_resampled['avg_lots_available'].isnull().astype(int)
    df_resampled['avg_lots_available'] = df_resampled['avg_lots_available'].astype(float)
    df_resampled['avg_total_lots'] = df_resampled['avg_total_lots'].astype(float)
    return df_resampled


# Interpolates missing parking availability data
def interpolate_and_fill(df_resampled):
    df_resampled['avg_lots_available'] = df_resampled['avg_lots_available'].interpolate(method='time')
    df_resampled['avg_total_lots'] = df_resampled['avg_total_lots'].interpolate(method='time')
    
    # Check if any NaN values remain after interpolation
    remaining_nans = df_resampled.isnull().sum().sum()
    
    if remaining_nans > 0:
        df_resampled.ffill(inplace=True)  # Forward fill remaining NaNs
        remaining_nans = df_resampled.isnull().sum().sum()  # Recheck NaN count
    else:
        pass 

    return df_resampled


# Prepares all data for analysis 
def prepare_data(df_resampled, df_rainfall=None, df_coe=None, df_ph=None, include_context=False):
    df_resampled['avg_lots_available'] = df_resampled['avg_lots_available'].round().astype(int)

    # Scaling numerical values 
    scaler = MinMaxScaler(feature_range=(0,1))
    df_resampled['lots_available_scaled'] = scaler.fit_transform(df_resampled[['avg_lots_available']])
    
    # target variable created
    df_resampled['lots_plus_one'] = df_resampled['lots_available_scaled'].shift(-1) 
    
    if include_context:
        
        # merge rainfall, public holiday and coe data
        df_resampled = df_resampled.merge(df_rainfall[['rainfall_score']], left_index=True, right_index=True, how='left')
        df_resampled = df_resampled.merge(df_ph[['is_public_holiday']], left_index=True, right_index=True, how='left')
        df_resampled = df_resampled.merge(df_coe, left_index=True, right_index=True)
        
        # feature engineer if day is weekend
        df_resampled['weekday'] = df_resampled.index.dayofweek
        df_resampled['is_weekend'] = (df_resampled['weekday'] >= 5).astype(int)
        df_resampled.drop(columns=['weekday'], inplace=True)
        
        # interpolate for missing data
        df_resampled.interpolate(method='linear', inplace=True)
        
        # scale contextual data
        df_resampled['rainfall_score'] = scaler.fit_transform(df_resampled[['rainfall_score']])
        df_resampled['bids_success'] = scaler.fit_transform(df_resampled[['bids_success']])
        df_resampled['is_weekend'] = scaler.fit_transform(df_resampled[['is_weekend']])
        df_resampled['is_public_holiday'] = scaler.fit_transform(df_resampled[['is_public_holiday']])
        
        df_final = df_resampled[['lots_available_scaled', 'missing_indicator', 'is_weekend', 'bids_success', 'rainfall_score', 'is_public_holiday', 'lots_plus_one']].dropna()
    else:
        df_final = df_resampled[['lots_available_scaled', 'missing_indicator', 'lots_plus_one']].dropna()

    return df_final

# connect to PostgreSQL
class Dataset:
    def __init__(self):
        self.connection = psycopg.connect(
            host=os.environ.get('POSTGRES_HOST'),
            user=os.environ.get('POSTGRES_USERNAME'),
            password=os.environ.get('POSTGRES_PASSWORD'),
            dbname=os.environ.get('POSTGRES_DATABASE_NAME')
        )
    
    
    def __enter__(self):
        return self
    
    
    def __exit__(self, *_):
        self.connection.close()
    
    # loads car park availability 
    def load_carpark_availability(self, carpark: str) -> pd.DataFrame:
        with self.connection.cursor() as cursor:
            # SQL query that aggregrates parking availability average per hour
            cursor.execute(f'''
                SELECT time_bucket('1 hour', time) AS time, AVG(total_lots) AS avg_total_lots, AVG(lots_available) AS avg_lots_available
                FROM carpark_availability
                WHERE time > '2020-01-01' AND time < '2024-10-31' AND carpark_number = '{carpark}'      
                GROUP BY time_bucket('1 hour', time)
                ORDER BY time_bucket('1 hour', time);
            ''')
            df = pd.DataFrame(cursor.fetchall(), columns=['time', 'avg_total_lots', 'avg_lots_available'])
            df['time'] = pd.to_datetime(df['time']).dt.tz_localize(None)
            df.set_index('time', inplace=True) 
            df = df[~df.index.duplicated(keep='first')] 
            df.sort_index(inplace=True) 
        return df
    
    
    # process and clean rainfall data
    def process_rainfall_data(self) -> pd.DataFrame:
        columns = ['date', 'west', 'east', 'central', 'south', 'north']
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT * FROM daily_rain_summary;')
            df_rainfall = pd.DataFrame(cursor.fetchall(), columns=columns)

        df_rainfall['date'] = pd.to_datetime(df_rainfall['date'], errors='coerce')
        df_rainfall = df_rainfall.dropna(subset=['date'])
        
        df_rainfall.set_index('date', inplace=True)
        
        df_rainfall = df_rainfall.astype('float')
        
        full_date_range = pd.date_range(start=df_rainfall.index.min(), end=df_rainfall.index.max(), freq='d')

        df_rainfall = df_rainfall.reindex(full_date_range)

        # Interpolate missing values using linear method
        df_rainfall.interpolate(method='linear', limit_direction='both', inplace=True)

        # create rainfall score for analysis
        df_rainfall['rainfall_score'] = df_rainfall[['west', 'east', 'central', 'south', 'north']].sum(axis=1)
        df_rainfall = df_rainfall[['rainfall_score']]
        df_rainfall = df_rainfall.resample('h').ffill()

        return df_rainfall


    # Process and clean coe data
    def process_coe_data(self) -> pd.DataFrame:    
        columns = [
            'time',
            'bidding_number',
            'vehicle_class',
            'quota',
            'bids_success',
            'bids_received',
            'premium'
        ]
        
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT * FROM coe_bidding;')
            df_coe = pd.DataFrame(cursor.fetchall(), columns=columns)
        
        df_coe['date'] = pd.to_datetime(df_coe['time'])
        df_coe = df_coe[(df_coe['date'] >= '2020-01-01') & (df_coe['date'] <= '2024-10-31')]
        df_coe = df_coe[['date', 'bids_success']]
        df_coe = df_coe.groupby('date', as_index=False)['bids_success'].sum()
        df_coe.set_index('date', inplace=True)
        df_coe = df_coe.resample('d').ffill()
        df_coe = df_coe.resample('h').ffill()
        
        return df_coe


    # process and clean public holiday data
    def process_holiday_data(self) -> pd.DataFrame:
        columns = [
            'date',
            'day',
            'holiday'
        ]
        
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT * FROM public_holidays;')
            df_ph = pd.DataFrame(cursor.fetchall(), columns=columns)
        
        df_ph['date'] = pd.to_datetime(df_ph['date'], errors='coerce')
        df_ph = df_ph.dropna(subset=['date'])

        hourly_index = pd.date_range(start='2020-01-01', end='2024-10-31 23:00', freq='h')
        df_ph_full = pd.DataFrame(index=hourly_index)

        df_ph['date'] = df_ph['date'].dt.normalize() 
        df_ph_full['is_public_holiday'] = df_ph_full.index.normalize().isin(df_ph['date']).astype(int)
        return df_ph_full