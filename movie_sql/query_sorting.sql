-- database: ../project_movies.db
-- Order by function. Shows the selection in order of production year

SELECT director, genres, production_year 
FROM directors
ORDER BY production_year;