-- Start by deleting any tables if the exist already
-- We want to be able to re-run this script as needed.
-- DROP tables in reverse order of creation 
-- DROP dependent tables (with foreign keys) first

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;

-- Create the directors table
-- This is the main table that the other tables are going to relate off of
-- No foreign key

CREATE TABLE directors (
    id INT PRIMARY KEY,
    production_year INT,
    title TEXT,
    director TEXT,
    director_id TEXT,
    co_directors TEXT,
    genres TEXT,
    cameras TEXT,
    negative_format TEXT,
    film_type TEXT    
);

-- Create movies table
-- Relates back to directors table
-- Has a foreign key 

CREATE TABLE movies (
    id INT PRIMARY KEY,
    title TEXT,
    directors TEXT,
    genres TEXT,
    camera_format TEXT,
    negative_format TEXT,
    budget INT,
    budget_source TEXT,
    film_type TEXT
    FOREIGN KEY (id) REFERENCES directors(id)
);