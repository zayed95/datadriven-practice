SELECT user_id,
SUM(total_amount) AS total_spend,
COUNT(transaction_id) AS purchase_count,
(100.0 * SUM(total_amount) / (SELECT SUM(total_amount) FROM transactions)) AS spend_share_pct
FROM transactions 
GROUP BY user_id
