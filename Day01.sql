CREATE DATABASE retail_db;
USE retail_db;

SELECT * FROM retail_sales_dataset;

SELECT DISTINCT Gender FROM retail_sales_dataset;

SELECT * FROM retail_sales_dataset LIMIT 10;

SELECT * FROM retail_sales_dataset WHERE Age > 30;

SELECT * FROM retail_sales_dataset WHERE Gender = 'Male';

SELECT * FROM retail_sales_dataset WHERE Quantity >= 2;
