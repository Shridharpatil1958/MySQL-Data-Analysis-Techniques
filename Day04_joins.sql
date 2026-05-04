-- Create tables
CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

CREATE TABLE emp_details (
    emp_id INT,
    name VARCHAR(50),
    dept_id INT
);

-- Insert data
INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

INSERT INTO emp_details VALUES
(1, 'Amit', 1),
(2, 'Ravi', 2),
(3, 'Sneha', 1),
(4, 'Priya', 3),
(5, 'Karan', NULL);

-- INNER JOIN
SELECT e.name, d.dept_name
FROM emp_details e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN
SELECT e.name, d.dept_name
FROM emp_details e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
