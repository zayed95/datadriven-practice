SELECT
  DISTINCT u.username,
  d.device_type
FROM users AS u
INNER JOIN user_sessions AS s
ON u.user_id = s.user_id
INNER JOIN devices AS d
ON d.device_id = s.device_id
ORDER BY u.username
