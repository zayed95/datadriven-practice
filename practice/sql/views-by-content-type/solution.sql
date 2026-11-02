SELECT ci.content_type, COUNT(cv.view_id) AS view_count
FROM content_views AS cv
INNER JOIN content_items AS ci
ON cv.content_id = ci.content_id
GROUP BY ci.content_type
ORDER BY ci.content_type
