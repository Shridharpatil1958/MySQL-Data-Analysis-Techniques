SELECT name, salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;

SELECT name, salary,
RANK() OVER (ORDER BY salary DESC) AS rank_num
FROM employees;
