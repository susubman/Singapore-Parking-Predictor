import pandas as pd
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error, mean_absolute_error
from math import sqrt

from dataset import Dataset, check_missing, interpolate_and_fill, prepare_data

import os

def train_eval_rf(features, target):
    X_train, X_test, Y_train, Y_test = train_test_split(features, target, test_size=0.2, random_state=42)

    # Define the hyperparameter grid
    param_grid = {
        'n_estimators': [100, 200, 300],  
        'max_depth': [10, 20, 30, None], 
        'min_samples_split': [2, 5, 10],  
        'min_samples_leaf': [1, 2, 4]     
    }

    # Initialize the Random Forest Regressor
    rf = RandomForestRegressor(random_state=42)

    # Perform Grid Search
    grid_search = GridSearchCV(estimator=rf, param_grid=param_grid,
                               scoring='neg_mean_absolute_error', cv=3, verbose=2, n_jobs=-1)

    grid_search.fit(X_train, Y_train)

    # Get the best model from Grid Search
    best_rf = grid_search.best_estimator_
    
    # Train the best model on the full training data
    best_rf.fit(X_train, Y_train)

    # Make predictions
    predictions = best_rf.predict(X_test)

    # Evaluate the model
    mse = mean_squared_error(Y_test, predictions)
    mae = mean_absolute_error(Y_test, predictions)
    rmse = sqrt(mse)

    return best_rf, mae, rmse


def main():
    carpark_list = ['JBM', 'FRM', 'DRM1', 'ECM', 'BA1']
    results = []
    
    with Dataset() as ds:
        
        df_rainfall = ds.process_rainfall_data()
        df_coe = ds.process_coe_data()
        df_ph = ds.process_holiday_data()

        # loop through car parks being analysed 
        for carpark in carpark_list:
            df = ds.load_carpark_availability(carpark)
            df_resampled = check_missing(df)
            df_resampled = interpolate_and_fill(df_resampled)

            print(f"\nTraining Random Forest for {carpark} WITHOUT Context is being processed")
            df_final_nc = prepare_data(df_resampled, df_rainfall, df_coe, df_ph, include_context=False)
            model_nc, mae_nc, rmse_nc = train_eval_rf(df_final_nc.drop(columns=['lots_plus_one']), df_final_nc['lots_plus_one'])
            results.append({
                'Carpark': carpark,
                'Context': 'No',
                'MAE': mae_nc,
                'RMSE': rmse_nc,
            })

            # Train and evaluate Random Forest with context
            print(f"\nTraining Random Forest for {carpark} WITH Context is being processed")
            df_final_c = prepare_data(df_resampled, df_rainfall, df_coe, df_ph, include_context=True)
            _, mae_c, rmse_c = train_eval_rf(df_final_c.drop(columns=['lots_plus_one']), df_final_c['lots_plus_one'])
            results.append({
                'Carpark': carpark,
                'Context': 'Yes',
                'MAE': mae_c,
                'RMSE': rmse_c,
            })
        
    # Convert list to DataFrame
    results_df = pd.DataFrame(results)
    
    script_directory = os.path.dirname(os.path.abspath(__file__))
    results_directory = os.path.join(script_directory, 'results')
    results_path = os.path.join(results_directory, 'Random_Forest_results.csv')
    
    if not os.path.exists(results_directory):
        os.makedirs(results_directory)
    
    # Save results to CSV
    results_df.to_csv(results_path, index=False)
    print(f'Results saved to {results_path}')


if __name__ == '__main__':
    main()
