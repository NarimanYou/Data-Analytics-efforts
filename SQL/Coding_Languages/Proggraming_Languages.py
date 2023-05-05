import pandas as pd
import plotly.express as px
import numpy as np
from sqlalchemy import create_engine
from dotenv import load_dotenv
from os import getenv
import psycopg2
from sqlalchemy.types import Integer, Text, String, Float

# read the CSV file into a pandas dataframe
df = pd.read_csv('E:\Bootcamp CT\Week_5\Assignments\Weekend_Project\pldb.csv')

# clean the data as necessary
df.drop_duplicates(inplace=True) # remove duplicates values

df.dropna(inplace=True)  # remove null values

# connect to the PostgreSQL database using SQLAlchemy
engine = create_engine('postgresql://fnyzhdgk:N1BMkIhcLtE_N9x5ewHFtmSyaOO3NedD@isilo.db.elephantsql.com/fnyzhdgk')

# Upload the cleaned data from the Pandas DataFrame to the PostgreSQL database
df.to_sql('mytable', engine, if_exists='replace', index=False)

# Extract the date and value columns for each language
X = df['appeared'].values

y_Python = df['Python'].values

y_Java = df['Java'].values

# Compute the slope and intercept of the line of best fit for each language
mean_x = np.mean(X)

mean_y_Python = np.mean(y_Python)

mean_y_Java = np.mean(y_Java)

slope_Python = np.sum((X - mean_x) * (y_Python - mean_y_Python)) / np.sum((X - mean_x) ** 2)

slope_Java = np.sum((X - mean_x) * (y_Java - mean_y_Java)) / np.sum((X - mean_x) ** 2)

intercept_Python = mean_y_Python - slope_Python * mean_x

intercept_Java = mean_y_Java - slope_Java * mean_x

# Print the intercept and coefficient of the model for each language
print('Python: Intercept =', intercept_Python, ', Coefficient =', slope_Python)

print('Java: Intercept =', intercept_Java, ', Coefficient =', slope_Java)

print('Slope:', slope_Python)

print('Intercept:', intercept_Python)