SELECT SUM(amount) AS revenue FROM orders;

SELECT order_id, amount
FROM orders
ORDER BY amount DESC;
