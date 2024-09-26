-- database: ../project_movies.db
-- Inner Join with the two tables

SELECT directors.director, directors.genres
FROM directors
INNER JOIN movies ON directors.director = movies.directors