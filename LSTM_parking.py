import os
import pandas as pd
from sklearn.metrics import mean_squared_error, mean_absolute_error
from math import sqrt
from sklearn.model_selection import train_test_split
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import LSTM, Dense, Input, Dropout

from dataset import Dataset, check_missing, interpolate_and_fill, prepare_data

os.environ['TF_ENABLE_ONEDNN_OPTS'] = '0'


# split data for training and testing
def split_data(df_final, include_context=False):
    
    if include_context:
        X_train, X_test, Y_train, Y_test = train_test_split(
            df_final[['lots_available_scaled', 'missing_indicator', 'rainfall_score', 'is_weekend', 'bids_success', 'is_public_holiday']], df_final['lots_plus_one'], test_size=0.20, random_state=42)       
    
    else:
        X_train, X_test, Y_train, Y_test = train_test_split(
            df_final[['lots_available_scaled', 'missing_indicator']], df_final['lots_plus_one'], test_size=0.20, random_state=42)
    
    # Reshape input to be [samples, time steps, features] which is required for LSTM
    X_train = X_train.values.reshape((X_train.shape[0], 1, X_train.shape[1]))
    X_test = X_test.values.reshape((X_test.shape[0], 1, X_test.shape[1]))
    return X_train, X_test, Y_train, Y_test


# creates strcuture for LSTM
def create_model(num_features, lstm_units=50, dropout_rate=0.2, optimizer='adam'):
    model = Sequential([
        Input(shape=(1, num_features)),
        LSTM(lstm_units, return_sequences=True),
        Dropout(dropout_rate),
        LSTM(lstm_units),
        Dropout(dropout_rate),
        Dense(1) 
    ])
    model.compile(optimizer=optimizer, loss='mean_squared_error')
    return model


# builds and trains LSTM model
def build_train_model(X_train, y_train, X_test, y_test, num_features):
    
    # key hyperparameters 
    epochs_options = [5, 10]
    batch_sizes = [16, 32]
    dropout_rates = [0.1, 0.2]

    best_score = float('inf')
    best_params = {}
    best_model = None

    # Grid cross search
    for epochs in epochs_options:
        for batch_size in batch_sizes:
            for dropout_rate in dropout_rates:
                print(f"Testing model with {epochs} epochs, {batch_size} batch size, {dropout_rate} dropout rate")
                model = create_model(num_features, lstm_units=50, dropout_rate=dropout_rate)
                model.fit(X_train, y_train, epochs=epochs, batch_size=batch_size, verbose=0)
                score = model.evaluate(X_test, y_test, verbose=0)
                if score < best_score:
                    best_score = score
                    best_params = {
                        'lstm_units': 50,  # Fixed
                        'dropout_rate': dropout_rate,
                        'optimizer': 'adam',  # Fixed
                        'batch_size': batch_size,
                        'epochs': epochs
                    }
                    best_model = model

    # Retrain the best model
    if best_model:
        best_model = create_model(num_features, lstm_units=best_params['lstm_units'], dropout_rate=best_params['dropout_rate'], optimizer='adam')
        best_model.fit(X_train, y_train, epochs=best_params['epochs'], batch_size=best_params['batch_size'], verbose=0)
        print(f"Retrained best model with params: {best_params}")

    return best_model, best_params, best_score


# calculate evaluation metrics
def evaluate_model(model, X_test, Y_test):
    # Evaluate the model using the test data
    predictions = model.predict(X_test)
    mae = mean_absolute_error(Y_test.to_numpy().reshape(-1, 1), predictions)
    mse = mean_squared_error(Y_test.to_numpy().reshape(-1, 1), predictions)
    rse = sqrt(mse)
    
    return mae, rse, predictions


def main():
    
    results = []
    carpark_list = ['JBM', 'FRM', 'DRM1', 'ECM', 'BA1']

    with Dataset() as ds:
        df_rainfall = ds.process_rainfall_data()
        df_coe = ds.process_coe_data()
        df_ph = ds.process_holiday_data()
        
        
        # loop through carparks for analysis
        for carpark in carpark_list:
            print(f"\nProcessing data for carpark: {carpark}")
            df = ds.load_carpark_availability(carpark)
            df_resampled = check_missing(df)
            df_resampled = interpolate_and_fill(df_resampled)

            # Non-contextual data preparation and modeling
            df_final_nc = prepare_data(df_resampled, None, None, include_context=False)
            X_train_nc, X_test_nc, Y_train_nc, Y_test_nc = split_data(df_final_nc, include_context=False)
            num_features_nc = X_train_nc.shape[2]
            model_nc, best_params_nc, best_score_nc = build_train_model(X_train_nc, Y_train_nc, X_test_nc, Y_test_nc, num_features_nc)
            mae_nc, rse_nc, _ = evaluate_model(model_nc, X_test_nc, Y_test_nc)
            results.append({
                "Carpark": carpark,
                "Context": "No Context",
                "MAE": mae_nc,
                "RMSE": rse_nc
            })
            print(f"{carpark} - No Context - Best Score: {best_score_nc}, Params: {best_params_nc}")

            # Contextual data preparation and modeling
            df_final_c = prepare_data(df_resampled, df_rainfall, df_coe, df_ph, include_context=True)
            X_train_c, X_test_c, Y_train_c, Y_test_c = split_data(df_final_c, include_context=True)
            num_features_c = X_train_c.shape[2]
            model_c, best_params_c, best_score_c = build_train_model(X_train_c, Y_train_c, X_test_c, Y_test_c, num_features_c)
            mae_c, rse_c, _ = evaluate_model(model_c, X_test_c, Y_test_c)
            results.append({
                "Carpark": carpark,
                "Context": "With Context",
                "MAE": mae_c,
                "RMSE": rse_c
            })
            print(f"{carpark} - With Context - Best Score: {best_score_c}, Params: {best_params_c}")

    # Save results to CSV
    results_df = pd.DataFrame(results)
    
    script_directory = os.path.dirname(os.path.abspath(__file__))
    results_directory = os.path.join(script_directory, 'results')
    results_path = os.path.join(results_directory, 'LSTM_Results.csv')
    
    if not os.path.exists(results_directory):
        os.makedirs(results_directory)
    

    results_df.to_csv(results_path, index=False)
    print(f'Results saved to {results_path}')

if __name__ == '__main__':
    main()


        
        