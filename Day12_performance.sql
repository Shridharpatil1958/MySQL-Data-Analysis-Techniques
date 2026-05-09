CREATE INDEX idx_salary ON employees(salary);

SELECT * FROM employees
WHERE salary > 50000;
