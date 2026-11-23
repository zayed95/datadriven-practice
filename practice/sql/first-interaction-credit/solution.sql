SELECT DISTINCT t.user_id, FIRST_VALUE(a.ad_campaign) OVER(PARTITION BY t.user_id ORDER BY transaction_date) ad_campaign, 
MIN(a.impression_time) impression_time
FROM transactions t
 JOIN ad_impressions a
ON t.user_id = a.user_id
GROUP BY t.user_id
