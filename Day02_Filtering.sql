mysql> SELECT * FROM sales_data WHERE Age BETWEEN 20 AND 30;
ERROR 1146 (42S02): Table 'retail_database.sales_data' doesn't exist
mysql> SELECT * FROM customers WHERE Age BETWEEN 20 AND 30;
+-------------+---------------+--------+------+------------------+-----------+---------------------+
| customer_id | customer_name | gender | age  | email            | city      | created_at          |
+-------------+---------------+--------+------+------------------+-----------+---------------------+
|           1 | Rahul Sharma  | Male   |   28 | rahul@gmail.com  | Mumbai    | 2026-03-30 14:42:18 |
|           4 | Sneha Reddy   | Female |   27 | sneha@gmail.com  | Hyderabad | 2026-03-30 14:42:18 |
|           6 | Pooja Mehta   | Female |   30 | pooja@gmail.com  | Pune      | 2026-03-30 14:42:18 |
|           7 | Karan Gupta   | Male   |   29 | karan@gmail.com  | Delhi     | 2026-03-30 14:42:18 |
|           8 | Neha Jain     | Female |   26 | neha@gmail.com   | Indore    | 2026-03-30 14:42:18 |
|          12 | Meera Iyer    | Female |   28 | meera@gmail.com  | Chennai   | 2026-03-30 14:42:18 |
|          14 | Divya Nair    | Female |   29 | divya@gmail.com  | Kochi     | 2026-03-30 14:42:18 |
|          16 | Anjali Singh  | Female |   25 | anjali@gmail.com | Noida     | 2026-03-30 14:42:18 |
|          19 | Nikhil Jain   | Male   |   27 | nikhil@gmail.com | Surat     | 2026-03-30 14:42:18 |
+-------------+---------------+--------+------+------------------+-----------+---------------------+
9 rows in set (0.06 sec)

mysql> SELECT * FROM orders WHERE Total_Amount BETWEEN 500 AND 1000;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|        2 |           2 | 2025-01-02 |       800.00 |
|        6 |           6 | 2025-01-06 |       500.00 |
|        9 |           9 | 2025-01-09 |       600.00 |
|       10 |          10 | 2025-01-10 |       700.00 |
|       18 |          18 | 2025-01-18 |       500.00 |
|       19 |          19 | 2025-01-19 |       900.00 |
+----------+-------------+------------+--------------+
6 rows in set (0.03 sec)

mysql> SELECT * FROM customers WHERE Gender IN ('Male', 'Female');
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

mysql> SELECT * FROM orders WHERE Product_Category = 'Electronics';
ERROR 1054 (42S22): Unknown column 'Product_Category' in 'where clause'
mysql> SELECT * FROM products WHERE Product_Category = 'Electronics';
ERROR 1054 (42S22): Unknown column 'Product_Category' in 'where clause'
mysql> SELECT * FROM order_items WHERE Product_Category = 'Electronics';
ERROR 1054 (42S22): Unknown column 'Product_Category' in 'where clause'
mysql> SELECT * FROM orders WHERE Quantity > 2 AND Total_Amount > 1000;
ERROR 1054 (42S22): Unknown column 'Quantity' in 'where clause'
mysql> SELECT * FROM order_items WHERE Quantity > 2 AND Total_Amount > 1000;
ERROR 1054 (42S22): Unknown column 'Total_Amount' in 'where clause'
mysql> SELECT * FROM orders WHERE Age < 25 OR Total_Amount > 2000;
ERROR 1054 (42S22): Unknown column 'Age' in 'where clause'
mysql> SELECT * FROM customers WHERE Age < 25 OR Total_Amount > 2000;
ERROR 1054 (42S22): Unknown column 'Total_Amount' in 'where clause'
mysql> Terminal close -- exit!
