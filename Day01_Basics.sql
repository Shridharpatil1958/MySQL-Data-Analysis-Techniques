mysql> -- 1. View all customersSELECT * FROM customers;
mysql> -- 1. View all customers
mysql> SELECT * FROM customers;
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

mysql> -- 2. View all products
mysql> SELECT * FROM products;
+------------+-----------------+-------------+----------+-------------+
| product_id | product_name    | category_id | price    | supplier_id |
+------------+-----------------+-------------+----------+-------------+
|          1 | Laptop          |           1 | 55000.00 |           3 |
|          2 | T-Shirt         |           2 |   800.00 |          20 |
|          3 | Rice Bag        |           3 |  1200.00 |           4 |
|          4 | Washing Machine |           4 | 25000.00 |           5 |
|          5 | Sofa            |           5 | 30000.00 |           5 |
|          6 | Novel Book      |           6 |   500.00 |           6 |
|          7 | Action Figure   |           7 |  1500.00 |           7 |
|          8 | Cricket Bat     |           8 |  2000.00 |           8 |
|          9 | Face Cream      |           9 |   600.00 |           9 |
|         10 | Car Oil         |          10 |   700.00 |          10 |
|         11 | Gold Ring       |          11 | 15000.00 |          11 |
|         12 | Running Shoes   |          12 |  2500.00 |          12 |
|         13 | Notebook        |          13 |   100.00 |          13 |
|         14 | Vitamins        |          14 |   400.00 |          14 |
|         15 | Plant Pot       |          15 |   300.00 |          15 |
|         16 | Guitar          |          16 |  7000.00 |          16 |
|         17 | Dog Food        |          17 |  1200.00 |          17 |
|         18 | Printer Paper   |          18 |   500.00 |          18 |
|         19 | Baby Diapers    |          19 |   900.00 |          19 |
|         20 | Watch           |          20 |  3000.00 |           1 |
+------------+-----------------+-------------+----------+-------------+
20 rows in set (0.00 sec)

mysql> -- 3. Select specific columns
mysql> SELECT customer_name, city FROM customers;
+---------------+------------+
| customer_name | city       |
+---------------+------------+
| Rahul Sharma  | Mumbai     |
| Anita Verma   | Delhi      |
| Amit Patel    | Ahmedabad  |
| Sneha Reddy   | Hyderabad  |
| Vikram Singh  | Jaipur     |
| Pooja Mehta   | Pune       |
| Karan Gupta   | Delhi      |
| Neha Jain     | Indore     |
| Rohit Kumar   | Patna      |
| Priya Sharma  | Chandigarh |
| Arjun Das     | Kolkata    |
| Meera Iyer    | Chennai    |
| Suresh Yadav  | Lucknow    |
| Divya Nair    | Kochi      |
| Manoj Kumar   | Bangalore  |
| Anjali Singh  | Noida      |
| Deepak Mishra | Bhopal     |
| Ritu Kapoor   | Gurgaon    |
| Nikhil Jain   | Surat      |
| Kavita Joshi  | Nagpur     |
+---------------+------------+
20 rows in set (0.00 sec)

mysql> -- 4. Show unique cities
mysql> SELECT DISTINCT city FROM customers;
+------------+
| city       |
+------------+
| Mumbai     |
| Delhi      |
| Ahmedabad  |
| Hyderabad  |
| Jaipur     |
| Pune       |
| Indore     |
| Patna      |
| Chandigarh |
| Kolkata    |
| Chennai    |
| Lucknow    |
| Kochi      |
| Bangalore  |
| Noida      |
| Bhopal     |
| Gurgaon    |
| Surat      |
| Nagpur     |
+------------+
19 rows in set (0.00 sec)

mysql> -- 5. Count total customers
mysql> SELECT COUNT(*) FROM customers;
+----------+
| COUNT(*) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

mysql> -- 6. Find max product price
mysql> SELECT MAX(price) FROM products;
+------------+
| MAX(price) |
+------------+
|   55000.00 |
+------------+
1 row in set (0.00 sec)

mysql> -- 7. Find min product price
mysql> SELECT MIN(price) FROM products;
+------------+
| MIN(price) |
+------------+
|     100.00 |
+------------+
1 row in set (0.00 sec)

mysql> -- 8. Average product price
mysql> SELECT AVG(price) FROM products;
+-------------+
| AVG(price)  |
+-------------+
| 7410.000000 |
+-------------+
1 row in set (0.00 sec)

mysql> -- 9. Total revenue from orders
mysql> SELECT SUM(total_amount) FROM orders;
+-------------------+
| SUM(total_amount) |
+-------------------+
|         148200.00 |
+-------------------+
1 row in set (0.00 sec)

mysql> -- 10. Show products with price > 5000
mysql> SELECT * FROM products WHERE price > 5000;
+------------+-----------------+-------------+----------+-------------+
| product_id | product_name    | category_id | price    | supplier_id |
+------------+-----------------+-------------+----------+-------------+
|          1 | Laptop          |           1 | 55000.00 |           3 |
|          4 | Washing Machine |           4 | 25000.00 |           5 |
|          5 | Sofa            |           5 | 30000.00 |           5 |
|         11 | Gold Ring       |          11 | 15000.00 |          11 |
|         16 | Guitar          |          16 |  7000.00 |          16 |
+------------+-----------------+-------------+----------+-------------+
5 rows in set (0.00 sec)

mysql> notee;
