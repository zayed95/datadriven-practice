SELECT AVG(results_count) AS avg_results
FROM search_queries
WHERE LOWER(search_term) LIKE '%keyboard%'
AND DATE_DIFF('day', query_time, NOW()) <= 90
