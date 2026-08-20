import os
import duckdb

# เชื่อมต่อกับไฟล์ฐานข้อมูล DuckDB (ถ้ายังไม่มีจะสร้างให้อัตโนมัติ)
con = duckdb.connect("dev.duckdb")

# ระบุโฟลเดอร์ที่เก็บ CSV
data_dir = "datasets"

# รายชื่อไฟล์ CSV หลักที่จะใช้แปลงเข้าสู่ Database
files_to_load = {
    "raw_employees": "employees.csv",
    "raw_products": "products.csv",
    "raw_orders": "orders.csv",
    "raw_order_details": "order_details.csv",
    "raw_customers": "customer.csv",
}

print("Starting Data Ingestion...")

for table_name, csv_file in files_to_load.items():
  file_path = os.path.join(data_dir, csv_file)
  if os.path.exists(file_path):
    con.execute(
        f"CREATE TABLE IF NOT EXISTS {table_name} AS SELECT * FROM"
        f" read_csv_auto('{file_path}')"
    )
    print(f" Loaded '{csv_file}' -> Table '{table_name}'")
  else:
    print(f" File not found: {file_path}")

con.close()
print("Ingestion Completed Successfully!")