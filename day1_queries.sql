mysql> CREATE DATABASE retail_db;
Query OK, 1 row affected (0.05 sec)

mysql> USE retail_db;
Database changed
mysql> 
mysql> CREATE TABLE retail_sales (
    ->     order_id INT,
    ->     order_date DATE,
    ->     customer_id VARCHAR(10),
    ->     customer_name VARCHAR(50),
    ->     product_id VARCHAR(10),
    ->     product_name VARCHAR(50),
    ->     category VARCHAR(50),
    ->     quantity INT,
    ->     price INT,
    ->     city VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO retail_sales 
    -> (order_id, order_date, customer_id, customer_name, product_id, product_name, category, quantity, price, city)
    -> VALUES
    -> (1001, '2024-01-05', 'C001', 'Ravi Kumar', 'P101', 'Laptop', 'Electronics', 1, 55000, 'Bangalore'),
    -> (1002, '2024-01-06', 'C002', 'Priya Sharma', 'P102', 'Mobile', 'Electronics', 2, 20000, 'Mumbai'),
    -> (1003, '2024-01-07', 'C003', 'Amit Singh', 'P103', 'Headphones', 'Accessories', 3, 1500, 'Delhi'),
    -> (1004, '2024-01-08', 'C001', 'Ravi Kumar', 'P104', 'Keyboard', 'Accessories', 1, 800, 'Bangalore'),
    -> (1005, '2024-01-09', 'C004', 'Neha Verma', 'P105', 'Chair', 'Furniture', 2, 3000, 'Hyderabad'),
    -> (1006, '2024-01-10', 'C005', 'Arjun Reddy', 'P101', 'Laptop', 'Electronics', 1, 60000, 'Chennai'),
    -> (1007, '2024-01-11', 'C006', 'Sneha Patil', 'P106', 'Table', 'Furniture', 1, 5000, 'Pune'),
    -> (1008, '2024-01-12', 'C002', 'Priya Sharma', 'P102', 'Mobile', 'Electronics', 1, 22000, 'Mumbai'),
    -> (1009, '2024-01-13', 'C007', 'Rahul Das', 'P107', 'Monitor', 'Electronics', 2, 12000, 'Kolkata'),
    -> (1010, '2024-01-14', 'C008', 'Kiran Rao', 'P108', 'Mouse', 'Accessories', 5, 500, 'Bangalore'),
    -> (1011, '2024-01-15', 'C009', 'Anjali Mehta', 'P109', 'Sofa', 'Furniture', 1, 25000, 'Delhi'),
    -> (1012, '2024-01-16', 'C010', 'Vikram Joshi', 'P103', 'Headphones', 'Accessories', 2, 1800, 'Mumbai'),
    -> (1013, '2024-01-17', 'C003', 'Amit Singh', 'P110', 'Printer', 'Electronics', 1, 9000, 'Delhi'),
    -> (1014, '2024-01-18', 'C004', 'Neha Verma', 'P105', 'Chair', 'Furniture', 1, 3200, 'Hyderabad'),
    -> (1015, '2024-01-19', 'C001', 'Ravi Kumar', 'P108', 'Mouse', 'Accessories', 2, 450, 'Bangalore');
Query OK, 15 rows affected (0.01 sec)
Records: 15  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM retail_sales;
+----------+------------+-------------+---------------+------------+--------------+-------------+----------+-------+-----------+
| order_id | order_date | customer_id | customer_name | product_id | product_name | category    | quantity | price | city      |
+----------+------------+-------------+---------------+------------+--------------+-------------+----------+-------+-----------+
|     1001 | 2024-01-05 | C001        | Ravi Kumar    | P101       | Laptop       | Electronics |        1 | 55000 | Bangalore |
|     1002 | 2024-01-06 | C002        | Priya Sharma  | P102       | Mobile       | Electronics |        2 | 20000 | Mumbai    |
|     1003 | 2024-01-07 | C003        | Amit Singh    | P103       | Headphones   | Accessories |        3 |  1500 | Delhi     |
|     1004 | 2024-01-08 | C001        | Ravi Kumar    | P104       | Keyboard     | Accessories |        1 |   800 | Bangalore |
|     1005 | 2024-01-09 | C004        | Neha Verma    | P105       | Chair        | Furniture   |        2 |  3000 | Hyderabad |
|     1006 | 2024-01-10 | C005        | Arjun Reddy   | P101       | Laptop       | Electronics |        1 | 60000 | Chennai   |
|     1007 | 2024-01-11 | C006        | Sneha Patil   | P106       | Table        | Furniture   |        1 |  5000 | Pune      |
|     1008 | 2024-01-12 | C002        | Priya Sharma  | P102       | Mobile       | Electronics |        1 | 22000 | Mumbai    |
|     1009 | 2024-01-13 | C007        | Rahul Das     | P107       | Monitor      | Electronics |        2 | 12000 | Kolkata   |
|     1010 | 2024-01-14 | C008        | Kiran Rao     | P108       | Mouse        | Accessories |        5 |   500 | Bangalore |
|     1011 | 2024-01-15 | C009        | Anjali Mehta  | P109       | Sofa         | Furniture   |        1 | 25000 | Delhi     |
|     1012 | 2024-01-16 | C010        | Vikram Joshi  | P103       | Headphones   | Accessories |        2 |  1800 | Mumbai    |
|     1013 | 2024-01-17 | C003        | Amit Singh    | P110       | Printer      | Electronics |        1 |  9000 | Delhi     |
|     1014 | 2024-01-18 | C004        | Neha Verma    | P105       | Chair        | Furniture   |        1 |  3200 | Hyderabad |
|     1015 | 2024-01-19 | C001        | Ravi Kumar    | P108       | Mouse        | Accessories |        2 |   450 | Bangalore |
+----------+------------+-------------+---------------+------------+--------------+-------------+----------+-------+-----------+
15 rows in set (0.00 sec)

mysql> SELECT customer_name, product_name FROM orders;
ERROR 1146 (42S02): Table 'retail_db.orders' doesn't exist
mysql> SELECT customer_name, product_name, price FROM retail_sales;
+---------------+--------------+-------+
| customer_name | product_name | price |
+---------------+--------------+-------+
| Ravi Kumar    | Laptop       | 55000 |
| Priya Sharma  | Mobile       | 20000 |
| Amit Singh    | Headphones   |  1500 |
| Ravi Kumar    | Keyboard     |   800 |
| Neha Verma    | Chair        |  3000 |
| Arjun Reddy   | Laptop       | 60000 |
| Sneha Patil   | Table        |  5000 |
| Priya Sharma  | Mobile       | 22000 |
| Rahul Das     | Monitor      | 12000 |
| Kiran Rao     | Mouse        |   500 |
| Anjali Mehta  | Sofa         | 25000 |
| Vikram Joshi  | Headphones   |  1800 |
| Amit Singh    | Printer      |  9000 |
| Neha Verma    | Chair        |  3200 |
| Ravi Kumar    | Mouse        |   450 |
+---------------+--------------+-------+
15 rows in set (0.00 sec)

mysql> SELECT * FROM retail_sales LIMIT 10;
+----------+------------+-------------+---------------+------------+--------------+-------------+----------+-------+-----------+
| order_id | order_date | customer_id | customer_name | product_id | product_name | category    | quantity | price | city      |
+----------+------------+-------------+---------------+------------+--------------+-------------+----------+-------+-----------+
|     1001 | 2024-01-05 | C001        | Ravi Kumar    | P101       | Laptop       | Electronics |        1 | 55000 | Bangalore |
|     1002 | 2024-01-06 | C002        | Priya Sharma  | P102       | Mobile       | Electronics |        2 | 20000 | Mumbai    |
|     1003 | 2024-01-07 | C003        | Amit Singh    | P103       | Headphones   | Accessories |        3 |  1500 | Delhi     |
|     1004 | 2024-01-08 | C001        | Ravi Kumar    | P104       | Keyboard     | Accessories |        1 |   800 | Bangalore |
|     1005 | 2024-01-09 | C004        | Neha Verma    | P105       | Chair        | Furniture   |        2 |  3000 | Hyderabad |
|     1006 | 2024-01-10 | C005        | Arjun Reddy   | P101       | Laptop       | Electronics |        1 | 60000 | Chennai   |
|     1007 | 2024-01-11 | C006        | Sneha Patil   | P106       | Table        | Furniture   |        1 |  5000 | Pune      |
|     1008 | 2024-01-12 | C002        | Priya Sharma  | P102       | Mobile       | Electronics |        1 | 22000 | Mumbai    |
|     1009 | 2024-01-13 | C007        | Rahul Das     | P107       | Monitor      | Electronics |        2 | 12000 | Kolkata   |
|     1010 | 2024-01-14 | C008        | Kiran Rao     | P108       | Mouse        | Accessories |        5 |   500 | Bangalore |
+----------+------------+-------------+---------------+------------+--------------+-------------+----------+-------+-----------+
10 rows in set (0.00 sec)

mysql> notee;
