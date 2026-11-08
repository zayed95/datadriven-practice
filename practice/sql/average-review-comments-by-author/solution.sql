SELECT c.author,
AVG(c.comments) AS avg_comments,
MIN(r.commit_at) AS earliest_commit
FROM code_reviews AS c
INNER JOIN repo_commits AS r
ON c.author = r.author
GROUP BY c.author
ORDER BY c.author
