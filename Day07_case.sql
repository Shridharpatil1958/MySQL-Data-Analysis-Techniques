SELECT name, salary,
CASE 
    WHEN salary > 60000 THEN 'High'
    WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium'
    ELSE 'Low'
END AS category
FROM employees;
