WITH cte AS (
SELECT DISTINCT orders.cust_no, COUNT(orders.order_number) OVER(PARTITION BY orders.cust_no) AS num_purchases
FROM orders)

SELECT COUNT(cust_no) as num_customers
FROM cte
WHERE num_purchases >=3