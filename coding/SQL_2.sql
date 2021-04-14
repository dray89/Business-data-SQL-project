SELECT DISTINCT customers.last_name
FROM orders
LEFT JOIN customers
ON orders.cust_no = customers.customer_number
WHERE orders.product_id = 'tyx/q/109' AND strftime('%Y-%m',ts) = '2021-02'