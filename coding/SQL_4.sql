SELECT COUNT(DISTINCT orders.order_number)
FROM orders
LEFT JOIN customers
ON orders.cust_no = customers.customer_number
WHERE customers.address LIKE '%NJ%' AND orders.transact_type = 'SALE'