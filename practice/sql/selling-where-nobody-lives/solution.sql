SELECT DISTINCT REGION 
FROM orders
WHERE region IS NOT NULL
AND (profit > 1200 AND status IN ('Completed', 'Shipped'))
