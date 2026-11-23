SELECT user_id, sum(total_amount) AS total_revenue
FROM transactions
WHERE MONTH(transaction_date) = 3 AND YEAR(transaction_date) = 2026
GROUP BY user_id
