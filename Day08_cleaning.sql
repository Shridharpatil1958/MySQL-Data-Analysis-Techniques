-- Create dirty table
CREATE TABLE emp_dirty (
    name VARCHAR(50),
    salary INT
);

INSERT INTO emp_dirty VALUES
('Amit', 60000),
('Amit', 60000),
('Ravi', NULL);

-- Remove duplicates
SELECT DISTINCT * FROM emp_dirty;

-- Handle NULL
SELECT name, IFNULL(salary, 0) AS salary
FROM emp_dirty;
