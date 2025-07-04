MaioFlor ETL Insights Pipeline

This is a beginner-friendly data engineering project that simulates a real-world Extract, Transform, Load (ETL) pipeline. It was built for MaioFlor Health — a fictional South African company that makes organic skincare and is expanding into herbal supplements.

The pipeline uses Python, Pandas, and PostgreSQL to load raw sales and product data into a structured database, with plans to generate useful business insights using SQL.

---

What This Project Does:

- Extracts data from two CSV files: `products.csv` and `sales.csv`
- (Optional) Transforms it using Python & Pandas
- Loads the data into a local PostgreSQL database using SQLAlchemy
- Creates two structured tables: `products` and `sales`
- Sets the stage for writing SQL queries and building dashboards

---

Tools Used:

- Python
- Pandas
- PostgreSQL
- SQLAlchemy
- psycopg2
- Bash (Git Bash terminal)

---

Project Diagram

![ETL Diagram](maioflor_etl_diagram.png)


---

How to Run This Project:

1. Clone the Repo

```bash
git clone https://github.com/Mercia05/maioflor-etl-pipeline.git
cd maioflor-etl-pipeline

2. Set Up Virtual Environment (optional but recommended)
python -m venv .venv
source .venv/Scripts/activate  or use .venv\Scripts\activate on Windows

3. Install Dependencies

pip install -r requirements.txt

4. Prepare PostgreSQL
Make sure PostgreSQL is installed and running.

Create a new database:

maioflor_db

Update the connection string in load_to_postgres.py with your PostgreSQL username and password.

5. Run ETL Scripts

Extract:

python scripts/extract_csv.py

Load:

python scripts/load_to_postgres.py

What's Next:
Write SQL queries to get business insights (e.g. top-selling products)

Sample Tables

Here’s what the data looks like after loading into PostgreSQL:

Products Table 

(products_table.png)

Sales Table


(sales_table.png)

