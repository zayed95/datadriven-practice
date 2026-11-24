SELECT query_id, 
CASE
  WHEN clicked_result < 4 THEN 3
  WHEN clicked_result > 3 THEN 2
  ELSE 1
END AS rating
FROM search_queries
