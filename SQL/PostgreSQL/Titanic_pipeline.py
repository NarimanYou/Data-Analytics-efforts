from dotenv import load_dotenv
from os import getenv
import psycopg2
import pandas as pd
from sqlalchemy.types import Integer, Text, String, Float

# URL:
connection = 'postgresql://fngswxzb:rNzFVQu81def-0hU7oSJk36JWJLBWhsp@isilo.db.elephantsql.com/fngswxzb'

# Loading Data Set :

titanic = pd.read_csv(r'C:\Users\narim\Downloads\titanic.csv')

[print(v) for v in titanic if v == '']


titanic.to_sql('titanic',
               index=False,
               con=connection,
               if_exists='replace',
               dtype={
               'Survived': Integer,
               'Pclass': Integer,
               'Name': String,
               'Sex': String,
               'Age': Float,
               'Siblings/Spouses_Aboard': Integer,
               'Parents/Children_Aboard': Integer,
               'Fare': Float
               })