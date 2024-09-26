-- Aggregate functions

-- Show all unique directors
SELECT DISTINCT COUNT(genres)
FROM directors;

-- Average budget for movies made
SELECT AVG(budget)
FROM movies;

-- Total spent on movies that were made
SELECT SUM(budget)
FROM movies;