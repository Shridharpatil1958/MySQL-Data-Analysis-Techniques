CREATE TABLE customers (
    id INT,
    name VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Amit'),
(2, 'Ravi');

-- Join with orders
SELECT c.name,
SUM(o.amount) AS total_spent,
RANK() OVER (ORDER BY SUM(o.amount) DESC) AS rank_num
FROM customers c
JOIN orders o ON c.id = o.order_id
GROUP BY c.name;
