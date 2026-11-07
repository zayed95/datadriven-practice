SELECT
  creator_id,
  SUM(
    CASE
      WHEN EXTRACT(YEAR FROM publish_date) = 2025 THEN -1
      WHEN EXTRACT(YEAR FROM publish_date) = 2026 THEN 1
      ELSE 0
    END
  ) AS net_difference
FROM content_items
WHERE content_type IN ('video', 'short', 'livestream')
GROUP BY creator_id
