SELECT name FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

SELECT name FROM employees e
WHERE EXISTS (
    SELECT 1 FROM departments d
    WHERE d.dept_name = e.department
);
