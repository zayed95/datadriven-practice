WITH region_hlth AS (
  SELECT region, AVG(latency) AS avg_region_latency
  FROM svc_health
  GROUP BY region
)
SELECT s.svc_name, s.region, s.latency, r.avg_region_latency
FROM svc_health AS s
JOIN region_hlth AS r
ON r.region = s.region
ORDER BY s.region, s.svc_name, s.latency
