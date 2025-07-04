# -*- coding: utf-8 -*-
import pandas as pd
from sqlalchemy import create_engine

# Database connection string (update if your password is different)
db_url = "postgresql+psycopg2://postgres:Jbgsjn8!@localhost:5432/maioflor_db"
engine = create_engine(db_url)

# Load CSV files
products_df = pd.read_csv("data/products.csv")
sales_df = pd.read_csv("data/sales.csv")

# Load data in to PostgreSQL
try:
    products_df.to_sql("products", engine, if_exists="replace", index=False)
    print("Products table loaded successfully.")

    sales_df.to_sql("sales", engine, if_exists="replace", index=False)
    print("Sales table loaded successfully.")

except Exception as e:
    print(f"Error loading data: {e}")