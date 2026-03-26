mysql> LOAD DATA LOCAL INFILE 'C:/mysql_data/retail_sales_dataset.csv'
    -> INTO TABLE orders_table
    -> FIELDS TERMINATED BY ','
    -> ENCLOSED BY '"'
    -> LINES TERMINATED BY '\n'
    -> IGNORE 1 ROWS;
ERROR 1046 (3D000): No database selected
mysql> Terminal close -- exit!
mysql> CREATE DATABASE retail_db;
Query OK, 1 row affected (0.03 sec)

mysql> USE retail_db;
Database changed
mysql> CREATE TABLE orders_table (
    ->     order_id INT,
    ->     order_date DATE,
    ->     customer_id INT,
    ->     customer_name VARCHAR(100),
    ->     product_id INT,
    ->     product_name VARCHAR(100),
    ->     category VARCHAR(50),
    ->     quantity INT,
    ->     price DECIMAL(10,2),
    ->     city VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.13 sec)

mysql> LOAD DATA LOCAL INFILE 'C:/mysql_data/retail_sales_dataset.csv'
    -> INTO TABLE orders_table
    -> FIELDS TERMINATED BY ','
    -> ENCLOSED BY '"'
    -> LINES TERMINATED BY '\n'
    -> IGNORE 1 ROWS;
ERROR 3948 (42000): Loading local data is disabled; this must be enabled on both the client and server sides
