SELECT COUNT(orders.order_number) AS num_orders
FROM orders
WHERE orders.product_id = 'fff/x/990'