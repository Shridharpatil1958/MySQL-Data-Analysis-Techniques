SELECT * FROM employees
ORDER BY salary DESC;

SELECT department, COUNT(*) AS total_emp
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;
