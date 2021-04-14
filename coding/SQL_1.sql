SELECT COUNT(DISTINCT cust_no)
FROM orders
WHERE strftime('%Y',ts) = '2021'