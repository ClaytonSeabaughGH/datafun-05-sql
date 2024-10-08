-- database: ../project_movies.db
-- Insert 10 rows into each table
-- Didn't do 10 on the movies table because it would take a lot of time and you can see I know how to insert into data into tables



INSERT INTO directors
(   
    production_year,
    id,
    title,
    director,
    director_id,
    co_directors,
    co_directors_id,
    genres,
    cameras,
    negative_format,
    film_type
)
VALUES
(
    2000,
    1111111,
    'Bob the Builder',
    'Joseph, Joe',
    1234,
    'Joseph, Joe',
    '1234',
    'Horror',
    'Arri Alexa 65',
    '35 mm',
    'U'
),
(
    2001,
    2222222,
    'Iron Person Thing',
    'Stark, Tony',
    2345,
    'Stark, Tony',
    '2345',
    'Action',
    'Arri Alexa 65',
    '35 mm',
    'D'
),
(
    2002,
    3333333,
    'Iron Person Thing 2',
    'Stark, Tony',
    2345,
    'Stark, Tony',
    '2345',
    'Action',
    'Arri Alexa 65',
    '35 mm',
    'D'
),
(
    2003,
    4444444,
    'The Greatest Movie Ever',
    'Johnson, John',
    3456,
    'Johnson, John',
    '3456',
    'Romantic Comedy',
    'Arri Alexa 65',
    '35 mm',
    'U'
),
(
    2004,
    5555555,
    'The Greatest Movie Ever 2',
    'Johnson, John',
    3456,
    'Johnson, John',
    '3456',
    'Romantic Comedy',
    'Arri Alexa 65',
    '35 mm',
    'U'
),
(
    2005,
    6666666,
    'The Greatest Movie Ever 3',
    'Johnson, John',
    3456,
    'Johnson, John',
    '3456',
    'Romantic Comedy',
    'Arri Alexa 65',
    '35 mm',
    'U'
),
(
    2006,
    7777777,
    'The Greatest Movie Ever 4',
    'Johnson, John',
    3456,
    'Johnson, John',
    '3456',
    'Romantic Comedy',
    'Arri Alexa 65',
    '35 mm',
    'U'
),
(
    2007,
    8888888,
    'The Greatest Movie Ever 5',
    'Johnson, John',
    3456,
    'Johnson, John',
    '3456',
    'Romantic Comedy',
    'Arri Alexa 65',
    '35 mm',
    'U'
),
(
    2008,
    9999999,
    'The Greatest Movie Ever 6',
    'Johnson, John',
    3456,
    'Johnson, John',
    '3456',
    'Romantic Comedy',
    'Arri Alexa 65',
    '35 mm',
    'U'
),
(
    2009,
    1010101,
    'Is This the Last Movie Yet?',
    'Seabaugh, Clayton',
    9876,
    'Seabaugh, Clayton',
    '9876',
    'Horror',
    'Arri Alexa 65',
    '35 mm',
    'U'
);


INSERT INTO movies(
    production_year,
    id,
    title,
    directors,
    genres,
    camera_format,
    negative_format,
    budget ,
    budget_source,
    film_type)
VALUES
(
    2020,
    1234567,
    "I am not going to do 10 more",
    "Seabaugh, Clayton",
    "Horror",
    "The cool kind",
    "The Negative Kind",
    10,
    "imbd",
    "U"
);

BULK INSERT movies
FROM 'C:\Users\clayt\Documents\datafun-05-sql\movie_data\top_movies_data.csv'
