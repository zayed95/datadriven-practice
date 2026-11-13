WITH sessions AS (
  SELECT user_id, SUM(session_duration_sec) AS session_seconds
  FROM user_sessions
  GROUP BY user_id
),
views AS (
  SELECT user_id, SUM(dur_ms) / 1000.00 AS viewing_seconds
  FROM page_views
  GROUP BY user_id
)
SELECT s.user_id, s.session_seconds, v.viewing_seconds
FROM sessions AS s
INNER JOIN views AS v
ON s.user_id = v.user_id
