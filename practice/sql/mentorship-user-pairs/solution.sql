SELECT a.user_id AS user_id_1, b.user_id AS user_id_2
FROM users AS a
JOIN users AS b
ON a.account_status = b.account_status
WHERE a.user_id > b.user_id AND a.age_bucket != b.age_bucket AND YEAR(a.signup_date) != YEAR(b.signup_date)
