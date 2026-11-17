WITH regions AS (
  SELECT region, SUM(amount) AS costs
  FROM cloud_costs
  GROUP BY region
  ORDER BY costs DESC
 )
SELECT *
FROM cost_allocs
WHERE region = (
  SELECT region 
  FROM regions 
  LIMIT 1
)
ORDER BY alloc_id
