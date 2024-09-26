# Datafun-05-sql
```
Project 5 integrates Python and SQL, focusing on database interactions using SQLite.
-This project introduces logging, a useful tool for debugging and monitoring projects, 
-involves creating and managing a database, building a schema, 
-performing various SQL operations, including queries with joins, filters, and aggregations.
```

# Schema Overview
```
Tables:
1. directors: 
    production_year INT,
    id INT PRIMARY KEY,
    title TEXT,
    director TEXT,
    director_id INT,
    co_directors TEXT,
    co_directors_id INT,
    genres TEXT,
    cameras TEXT,
    negative_format TEXT,
    film_type TEXT    
2. movies:
    production_year INT,
    id INT PRIMARY KEY,
    title TEXT,
    directors TEXT,
    genres TEXT,
    camera_format TEXT,
    negative_format TEXT,
    budget INT,
    budget_source TEXT,
    film_type TEXT,
    FOREIGN KEY (id) REFERENCES directors(id)
```
![alt text](<Directors Table.png>)
![alt text](<Movies Table.png>)

# Commands used
```
git add .
git commit -m
git push 
```