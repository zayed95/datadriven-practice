SELECT event_type
FROM event_data
GROUP BY event_type
HAVING COUNT(DISTINCT CONCAT(YEAR(event_timestamp), '-', MONTH(event_timestamp))) > 11
