SELECT u.user_id, COUNT(DISTINCT p.category) AS category_count
FROM users AS u
INNER JOIN transactions AS t
ON u.user_id = t.user_id
LEFT JOIN products AS p
ON t.product_id = p.product_id
WHERE t.total_amount < 500
GROUP BY u.user_id
HAVING COUNT(DISTINCT category) > 1
ORDER BY category_count DESC, u.user_id
