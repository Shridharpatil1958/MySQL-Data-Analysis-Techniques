SELECT department,
COUNT(*) AS total_emp,
AVG(salary) AS avg_salary,
SUM(salary) AS total_salary
FROM employees
GROUP BY department;
