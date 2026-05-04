-- Create Table
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert Data
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 60000),
(2, 'Ravi', 'HR', 40000),
(3, 'Sneha', 'IT', 70000),
(4, 'Priya', 'Finance', 50000),
(5, 'Karan', 'HR', 30000);

-- Queries
SELECT * FROM employees;

SELECT name, salary FROM employees;

SELECT DISTINCT department FROM employees;

SELECT COUNT(*) FROM employees;

SELECT SUM(salary) FROM employees;

SELECT AVG(salary) FROM employees;
