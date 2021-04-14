SELECT orders.ts, orders.cust_no, 
    CASE WHEN customers.first_name IS NULL THEN "Customer"
    ELSE customers.first_name END AS first_name
FROM orders
LEFT JOIN customers
ON orders.cust_no = customers.customer_number
WHERE orders.transact_type = 'VOID' AND orders.product_id LIKE 't%'