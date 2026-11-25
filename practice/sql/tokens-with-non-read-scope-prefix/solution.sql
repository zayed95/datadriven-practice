SELECT COUNT(DISTINCT owner_id)
FROM api_tokens
WHERE NOT scope LIKE 'read%'
