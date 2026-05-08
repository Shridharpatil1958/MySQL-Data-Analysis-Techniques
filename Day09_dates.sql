CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount INT
);

INSERT INTO orders VALUES
(1, '2024-01-10', 1000),
(2, '2024-02-15', 2000),
(3, '2025-01-05', 1500);

SELECT * FROM orders
WHERE YEAR(order_date) = 2024;

SELECT MONTH(order_date), SUM(amount)
FROM orders
GROUP BY MONTH(order_date);
