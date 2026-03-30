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
mysql> Terminal close -- exit!
mysql> use retail_database;
Database changed
mysql> CREATE TABLE customers (
    ->     customer_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     customer_name VARCHAR(100),
    ->     gender VARCHAR(10),
    ->     age INT,
    ->     email VARCHAR(100),
    ->     city VARCHAR(50),
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.19 sec)

mysql> CREATE TABLE categories (
    ->     category_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     category_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> CREATE TABLE products (
    ->     product_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     product_name VARCHAR(100),
    ->     category_id INT,
    ->     price DECIMAL(10,2),
    ->     supplier_id INT,
    ->     FOREIGN KEY (category_id) REFERENCES categories(category_id)
    -> );
Query OK, 0 rows affected (0.14 sec)

mysql> CREATE TABLE suppliers (
    ->     supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     supplier_name VARCHAR(100),
    ->     contact_email VARCHAR(100),
    ->     city VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> CREATE TABLE inventory (
    ->     inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     product_id INT,
    ->     stock_quantity INT,
    ->     last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ->     FOREIGN KEY (product_id) REFERENCES products(product_id)
    -> );
Query OK, 0 rows affected (0.29 sec)

mysql> CREATE TABLE orders (
    ->     order_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     customer_id INT,
    ->     order_date DATE,
    ->     total_amount DECIMAL(10,2),
    ->     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> CREATE TABLE order_items (
    ->     order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     order_id INT,
    ->     product_id INT,
    ->     quantity INT,
    ->     price DECIMAL(10,2),
    ->     total DECIMAL(10,2),
    ->     FOREIGN KEY (order_id) REFERENCES orders(order_id),
    ->     FOREIGN KEY (product_id) REFERENCES products(product_id)
    -> );
Query OK, 0 rows affected (0.13 sec)

mysql> CREATE TABLE payments (
    ->     payment_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     order_id INT,
    ->     payment_method VARCHAR(50),
    ->     payment_status VARCHAR(50),
    ->     payment_date DATE,
    ->     FOREIGN KEY (order_id) REFERENCES orders(order_id)
    -> );
Query OK, 0 rows affected (0.15 sec)

mysql> CREATE TABLE payments (
    ->     payment_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     order_id INT,
    ->     payment_method VARCHAR(50),
    ->     payment_status VARCHAR(50),
    ->     payment_date DATE,
    ->     FOREIGN KEY (order_id) REFERENCES orders(order_id)
    -> 
    -> 
    -> 
    -> );
ERROR 1050 (42S01): Table 'payments' already exists
mysql> INSERT INTO categories (category_name) VALUES
    -> ('Electronics'), ('Clothing'), ('Groceries'), ('Home Appliances'),
    -> ('Furniture'), ('Books'), ('Toys'), ('Sports'),
    -> ('Beauty'), ('Automotive'), ('Jewelry'), ('Footwear'),
    -> ('Stationery'), ('Health'), ('Garden'), ('Music'),
    -> ('Pet Supplies'), ('Office Supplies'), ('Baby Products'), ('Accessories');
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO suppliers (supplier_name, contact_email, city) VALUES
    -> ('ABC Traders','abc@gmail.com','Mumbai'),
    -> ('Global Supply','global@gmail.com','Delhi'),
    -> ('TechSource','tech@gmail.com','Bangalore'),
    -> ('FreshFarm','fresh@gmail.com','Pune'),
    -> ('HomeNeeds','home@gmail.com','Hyderabad'),
    -> ('BookWorld','books@gmail.com','Chennai'),
    -> ('ToyLand','toy@gmail.com','Kolkata'),
    -> ('Sportify','sport@gmail.com','Ahmedabad'),
    -> ('BeautyCare','beauty@gmail.com','Surat'),
    -> ('AutoParts','auto@gmail.com','Jaipur'),
    -> ('GoldMart','gold@gmail.com','Lucknow'),
    -> ('ShoeHub','shoe@gmail.com','Nagpur'),
    -> ('PaperPoint','paper@gmail.com','Indore'),
    -> ('MediPlus','med@gmail.com','Bhopal'),
    -> ('GreenLeaf','green@gmail.com','Patna'),
    -> ('MusicStore','music@gmail.com','Chandigarh'),
    -> ('PetWorld','pet@gmail.com','Coimbatore'),
    -> ('OfficeMart','office@gmail.com','Noida'),
    -> ('BabyCare','baby@gmail.com','Gurgaon'),
    -> ('FashionHub','fashion@gmail.com','Kochi');
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO products (product_name, category_id, price, supplier_id) VALUES
    -> ('Laptop',1,55000,3),
    -> ('T-Shirt',2,800,20),
    -> ('Rice Bag',3,1200,4),
    -> ('Washing Machine',4,25000,5),
    -> ('Sofa',5,30000,5),
    -> ('Novel Book',6,500,6),
    -> ('Action Figure',7,1500,7),
    -> ('Cricket Bat',8,2000,8),
    -> ('Face Cream',9,600,9),
    -> ('Car Oil',10,700,10),
    -> ('Gold Ring',11,15000,11),
    -> ('Running Shoes',12,2500,12),
    -> ('Notebook',13,100,13),
    -> ('Vitamins',14,400,14),
    -> ('Plant Pot',15,300,15),
    -> ('Guitar',16,7000,16),
    -> ('Dog Food',17,1200,17),
    -> ('Printer Paper',18,500,18),
    -> ('Baby Diapers',19,900,19),
    -> ('Watch',20,3000,1);
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO customers (customer_name, gender, age, email, city) VALUES
    -> ('Rahul Sharma','Male',28,'rahul@gmail.com','Mumbai'),
    -> ('Anita Verma','Female',32,'anita@gmail.com','Delhi'),
    -> ('Amit Patel','Male',35,'amit@gmail.com','Ahmedabad'),
    -> ('Sneha Reddy','Female',27,'sneha@gmail.com','Hyderabad'),
    -> ('Vikram Singh','Male',40,'vikram@gmail.com','Jaipur'),
    -> ('Pooja Mehta','Female',30,'pooja@gmail.com','Pune'),
    -> ('Karan Gupta','Male',29,'karan@gmail.com','Delhi'),
    -> ('Neha Jain','Female',26,'neha@gmail.com','Indore'),
    -> ('Rohit Kumar','Male',31,'rohit@gmail.com','Patna'),
    -> ('Priya Sharma','Female',33,'priya@gmail.com','Chandigarh'),
    -> ('Arjun Das','Male',34,'arjun@gmail.com','Kolkata'),
    -> ('Meera Iyer','Female',28,'meera@gmail.com','Chennai'),
    -> ('Suresh Yadav','Male',45,'suresh@gmail.com','Lucknow'),
    -> ('Divya Nair','Female',29,'divya@gmail.com','Kochi'),
    -> ('Manoj Kumar','Male',38,'manoj@gmail.com','Bangalore'),
    -> ('Anjali Singh','Female',25,'anjali@gmail.com','Noida'),
    -> ('Deepak Mishra','Male',36,'deepak@gmail.com','Bhopal'),
    -> ('Ritu Kapoor','Female',31,'ritu@gmail.com','Gurgaon'),
    -> ('Nikhil Jain','Male',27,'nikhil@gmail.com','Surat'),
    -> ('Kavita Joshi','Female',42,'kavita@gmail.com','Nagpur');
Query OK, 20 rows affected (0.03 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO orders (customer_id, order_date, total_amount) VALUES
    -> (1,'2025-01-01',55000),
    -> (2,'2025-01-02',800),
    -> (3,'2025-01-03',1200),
    -> (4,'2025-01-04',25000),
    -> (5,'2025-01-05',30000),
    -> (6,'2025-01-06',500),
    -> (7,'2025-01-07',1500),
    -> (8,'2025-01-08',2000),
    -> (9,'2025-01-09',600),
    -> (10,'2025-01-10',700),
    -> (11,'2025-01-11',15000),
    -> (12,'2025-01-12',2500),
    -> (13,'2025-01-13',100),
    -> (14,'2025-01-14',400),
    -> (15,'2025-01-15',300),
    -> (16,'2025-01-16',7000),
    -> (17,'2025-01-17',1200),
    -> (18,'2025-01-18',500),
    -> (19,'2025-01-19',900),
    -> (20,'2025-01-20',3000);
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO order_items (order_id, product_id, quantity, price, total) VALUES
    -> (1,1,1,55000,55000),
    -> (2,2,1,800,800),
    -> (3,3,1,1200,1200),
    -> (4,4,1,25000,25000),
    -> (5,5,1,30000,30000),
    -> (6,6,1,500,500),
    -> (7,7,1,1500,1500),
    -> (8,8,1,2000,2000),
    -> (9,9,1,600,600),
    -> (10,10,1,700,700),
    -> (11,11,1,15000,15000),
    -> (12,12,1,2500,2500),
    -> (13,13,1,100,100),
    -> (14,14,1,400,400),
    -> (15,15,1,300,300),
    -> (16,16,1,7000,7000),
    -> (17,17,1,1200,1200),
    -> (18,18,1,500,500),
    -> (19,19,1,900,900),
    -> (20,20,1,3000,3000);
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO inventory (product_id, stock_quantity) VALUES
    -> (1,50),(2,200),(3,150),(4,30),(5,20),
    -> (6,100),(7,80),(8,60),(9,120),(10,90),
    -> (11,25),(12,70),(13,300),(14,110),(15,140),
    -> (16,40),(17,75),(18,200),(19,130),(20,55);
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO payments (order_id, payment_method, payment_status, payment_date) VALUES
    -> (1,'Credit Card','Completed','2025-01-01'),
    -> (2,'UPI','Completed','2025-01-02'),
    -> (3,'Debit Card','Completed','2025-01-03'),
    -> (4,'Net Banking','Completed','2025-01-04'),
    -> (5,'Cash','Completed','2025-01-05'),
    -> (6,'UPI','Completed','2025-01-06'),
    -> (7,'Credit Card','Completed','2025-01-07'),
    -> (8,'UPI','Completed','2025-01-08'),
    -> (9,'Debit Card','Completed','2025-01-09'),
    -> (10,'Cash','Completed','2025-01-10'),
    -> (11,'Credit Card','Completed','2025-01-11'),
    -> (12,'UPI','Completed','2025-01-12'),
    -> (13,'Cash','Completed','2025-01-13'),
    -> (14,'Debit Card','Completed','2025-01-14'),
    -> (15,'UPI','Completed','2025-01-15'),
    -> (16,'Credit Card','Completed','2025-01-16'),
    -> (17,'Cash','Completed','2025-01-17'),
    -> (18,'UPI','Completed','2025-01-18'),
    -> (19,'Debit Card','Completed','2025-01-19'),
    -> (20,'Credit Card','Completed','2025-01-20');
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> show tables;
+---------------------------+
| Tables_in_retail_database |
+---------------------------+
| categories                |
| customers                 |
| inventory                 |
| order_items               |
| orders                    |
| payments                  |
| products                  |
| suppliers                 |
+---------------------------+
8 rows in set (0.03 sec)

mysql> select * from customers;
+-------------+---------------+--------+------+------------------+------------+---------------------+
| customer_id | customer_name | gender | age  | email            | city       | created_at          |
+-------------+---------------+--------+------+------------------+------------+---------------------+
|           1 | Rahul Sharma  | Male   |   28 | rahul@gmail.com  | Mumbai     | 2026-03-30 14:42:18 |
|           2 | Anita Verma   | Female |   32 | anita@gmail.com  | Delhi      | 2026-03-30 14:42:18 |
|           3 | Amit Patel    | Male   |   35 | amit@gmail.com   | Ahmedabad  | 2026-03-30 14:42:18 |
|           4 | Sneha Reddy   | Female |   27 | sneha@gmail.com  | Hyderabad  | 2026-03-30 14:42:18 |
|           5 | Vikram Singh  | Male   |   40 | vikram@gmail.com | Jaipur     | 2026-03-30 14:42:18 |
|           6 | Pooja Mehta   | Female |   30 | pooja@gmail.com  | Pune       | 2026-03-30 14:42:18 |
|           7 | Karan Gupta   | Male   |   29 | karan@gmail.com  | Delhi      | 2026-03-30 14:42:18 |
|           8 | Neha Jain     | Female |   26 | neha@gmail.com   | Indore     | 2026-03-30 14:42:18 |
|           9 | Rohit Kumar   | Male   |   31 | rohit@gmail.com  | Patna      | 2026-03-30 14:42:18 |
|          10 | Priya Sharma  | Female |   33 | priya@gmail.com  | Chandigarh | 2026-03-30 14:42:18 |
|          11 | Arjun Das     | Male   |   34 | arjun@gmail.com  | Kolkata    | 2026-03-30 14:42:18 |
|          12 | Meera Iyer    | Female |   28 | meera@gmail.com  | Chennai    | 2026-03-30 14:42:18 |
|          13 | Suresh Yadav  | Male   |   45 | suresh@gmail.com | Lucknow    | 2026-03-30 14:42:18 |
|          14 | Divya Nair    | Female |   29 | divya@gmail.com  | Kochi      | 2026-03-30 14:42:18 |
|          15 | Manoj Kumar   | Male   |   38 | manoj@gmail.com  | Bangalore  | 2026-03-30 14:42:18 |
|          16 | Anjali Singh  | Female |   25 | anjali@gmail.com | Noida      | 2026-03-30 14:42:18 |
|          17 | Deepak Mishra | Male   |   36 | deepak@gmail.com | Bhopal     | 2026-03-30 14:42:18 |
|          18 | Ritu Kapoor   | Female |   31 | ritu@gmail.com   | Gurgaon    | 2026-03-30 14:42:18 |
|          19 | Nikhil Jain   | Male   |   27 | nikhil@gmail.com | Surat      | 2026-03-30 14:42:18 |
|          20 | Kavita Joshi  | Female |   42 | kavita@gmail.com | Nagpur     | 2026-03-30 14:42:18 |
+-------------+---------------+--------+------+------------------+------------+---------------------+
20 rows in set (0.00 sec)

mysql> select * from categories;
+-------------+-----------------+
| category_id | category_name   |
+-------------+-----------------+
|           1 | Electronics     |
|           2 | Clothing        |
|           3 | Groceries       |
|           4 | Home Appliances |
|           5 | Furniture       |
|           6 | Books           |
|           7 | Toys            |
|           8 | Sports          |
|           9 | Beauty          |
|          10 | Automotive      |
|          11 | Jewelry         |
|          12 | Footwear        |
|          13 | Stationery      |
|          14 | Health          |
|          15 | Garden          |
|          16 | Music           |
|          17 | Pet Supplies    |
|          18 | Office Supplies |
|          19 | Baby Products   |
|          20 | Accessories     |
+-------------+-----------------+
20 rows in set (0.00 sec)

mysql> select * from inventory;
+--------------+------------+----------------+---------------------+
| inventory_id | product_id | stock_quantity | last_updated        |
+--------------+------------+----------------+---------------------+
|            1 |          1 |             50 | 2026-03-30 14:42:47 |
|            2 |          2 |            200 | 2026-03-30 14:42:47 |
|            3 |          3 |            150 | 2026-03-30 14:42:47 |
|            4 |          4 |             30 | 2026-03-30 14:42:47 |
|            5 |          5 |             20 | 2026-03-30 14:42:47 |
|            6 |          6 |            100 | 2026-03-30 14:42:47 |
|            7 |          7 |             80 | 2026-03-30 14:42:47 |
|            8 |          8 |             60 | 2026-03-30 14:42:47 |
|            9 |          9 |            120 | 2026-03-30 14:42:47 |
|           10 |         10 |             90 | 2026-03-30 14:42:47 |
|           11 |         11 |             25 | 2026-03-30 14:42:47 |
|           12 |         12 |             70 | 2026-03-30 14:42:47 |
|           13 |         13 |            300 | 2026-03-30 14:42:47 |
|           14 |         14 |            110 | 2026-03-30 14:42:47 |
|           15 |         15 |            140 | 2026-03-30 14:42:47 |
|           16 |         16 |             40 | 2026-03-30 14:42:47 |
|           17 |         17 |             75 | 2026-03-30 14:42:47 |
|           18 |         18 |            200 | 2026-03-30 14:42:47 |
|           19 |         19 |            130 | 2026-03-30 14:42:47 |
|           20 |         20 |             55 | 2026-03-30 14:42:47 |
+--------------+------------+----------------+---------------------+
20 rows in set (0.00 sec)

mysql> select * from order_items;
+---------------+----------+------------+----------+----------+----------+
| order_item_id | order_id | product_id | quantity | price    | total    |
+---------------+----------+------------+----------+----------+----------+
|             1 |        1 |          1 |        1 | 55000.00 | 55000.00 |
|             2 |        2 |          2 |        1 |   800.00 |   800.00 |
|             3 |        3 |          3 |        1 |  1200.00 |  1200.00 |
|             4 |        4 |          4 |        1 | 25000.00 | 25000.00 |
|             5 |        5 |          5 |        1 | 30000.00 | 30000.00 |
|             6 |        6 |          6 |        1 |   500.00 |   500.00 |
|             7 |        7 |          7 |        1 |  1500.00 |  1500.00 |
|             8 |        8 |          8 |        1 |  2000.00 |  2000.00 |
|             9 |        9 |          9 |        1 |   600.00 |   600.00 |
|            10 |       10 |         10 |        1 |   700.00 |   700.00 |
|            11 |       11 |         11 |        1 | 15000.00 | 15000.00 |
|            12 |       12 |         12 |        1 |  2500.00 |  2500.00 |
|            13 |       13 |         13 |        1 |   100.00 |   100.00 |
|            14 |       14 |         14 |        1 |   400.00 |   400.00 |
|            15 |       15 |         15 |        1 |   300.00 |   300.00 |
|            16 |       16 |         16 |        1 |  7000.00 |  7000.00 |
|            17 |       17 |         17 |        1 |  1200.00 |  1200.00 |
|            18 |       18 |         18 |        1 |   500.00 |   500.00 |
|            19 |       19 |         19 |        1 |   900.00 |   900.00 |
|            20 |       20 |         20 |        1 |  3000.00 |  3000.00 |
+---------------+----------+------------+----------+----------+----------+
20 rows in set (0.00 sec)

mysql> select * from orders;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|        1 |           1 | 2025-01-01 |     55000.00 |
|        2 |           2 | 2025-01-02 |       800.00 |
|        3 |           3 | 2025-01-03 |      1200.00 |
|        4 |           4 | 2025-01-04 |     25000.00 |
|        5 |           5 | 2025-01-05 |     30000.00 |
|        6 |           6 | 2025-01-06 |       500.00 |
|        7 |           7 | 2025-01-07 |      1500.00 |
|        8 |           8 | 2025-01-08 |      2000.00 |
|        9 |           9 | 2025-01-09 |       600.00 |
|       10 |          10 | 2025-01-10 |       700.00 |
|       11 |          11 | 2025-01-11 |     15000.00 |
|       12 |          12 | 2025-01-12 |      2500.00 |
|       13 |          13 | 2025-01-13 |       100.00 |
|       14 |          14 | 2025-01-14 |       400.00 |
|       15 |          15 | 2025-01-15 |       300.00 |
|       16 |          16 | 2025-01-16 |      7000.00 |
|       17 |          17 | 2025-01-17 |      1200.00 |
|       18 |          18 | 2025-01-18 |       500.00 |
|       19 |          19 | 2025-01-19 |       900.00 |
|       20 |          20 | 2025-01-20 |      3000.00 |
+----------+-------------+------------+--------------+
20 rows in set (0.00 sec)

mysql> notee;
