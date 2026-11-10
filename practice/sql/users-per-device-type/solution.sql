SELECT d.device_type, COUNT(DISTINCT u.user_id) AS user_count
FROM devices AS d
RIGHT JOIN user_sessions AS u
  ON d.device_id = u.device_id
GROUP BY d.device_type
