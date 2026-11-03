SELECT u.username, u.account_status, MAX(us.session_start) AS last_login,
SUM(COALESCE(t.total_amount, 0)) AS lifetime_spend
FROM users AS u
LEFT JOIN user_sessions AS us
ON u.user_id = us.user_id
LEFT JOIN transactions AS t
ON u.user_id = t.user_id
WHERE u.account_status = 'active'
GROUP BY u.username
HAVING DATEDIFF('day', MAX(us.session_start), CURRENT_TIMESTAMP) > 90 OR us.session_start IS NULL
