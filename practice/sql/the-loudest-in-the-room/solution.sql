SELECT client, SUM(COALESCE(blocked, 0)) AS total_blocked 
FROM rate_limits
WHERE endpoint = '/api/v1/auth'
GROUP BY client
ORDER BY 2 DESC
LIMIT 2
