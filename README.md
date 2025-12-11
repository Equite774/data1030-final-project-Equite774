# README

This is a repository containing my final project for DATA 1030. I predicted the delay of a given flight based on flight circumstances from a 2015 dataset collected by the USDOT Bureau of Transportation Statistics.

I used 4 different models, including ElasticNet linear regression, a linear support vector machine, a decision tree, and XGBoost, achieving a RMSE between 9 and 11.

Access the dataset [here.](https://www.kaggle.com/datasets/usdot/flight-delays/data?select=flights.csv)

Code was developed in Python 3.12.10, with the following libraries:

- numpy 2.2.5
- matplotlib 3.10.1
- sklearn 1.6.1
- pandas 2.2.3
- xgboost 3.0.0
- shap 0.47.2
- polars 1.27.1
- seaborn 0.13.2