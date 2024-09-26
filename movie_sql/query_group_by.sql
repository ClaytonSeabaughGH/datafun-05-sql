-- Group by clause, show unique directors and organize them by genre

SELECT DISTINCT COUNT(director)
FROM directors
GROUP BY genre;