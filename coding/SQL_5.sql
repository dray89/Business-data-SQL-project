SELECT COUNT(DISTINCT cust_no)
FROM orders
WHERE strftime('%Y', ts) = '2021' AND order_number NOT IN (
    SELECT order_number
    FROM orders
    WHERE transact_type IN ('VOID', 'FAILED'))
