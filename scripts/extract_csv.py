# -*- coding: utf-8 -*-
import pandas as pd # type: ignore

# File paths
products_file = "data/products.csv"
sales_file = "data/sales.csv"

# Load CSVs into DataFrames
products_df = pd.read_csv(products_file)
sales_df = pd.read_csv(sales_file)

# Print sample output
print("\n Products Data:")
print(products_df.head())

print("\n Sales Data:")
print(sales_df.head())
