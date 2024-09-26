-- Insert 10 rows into each table
--
INSERT INTO directors
(   id,
    production_year,
    title ,
    director,
    director_id,
    co_directors,
    genres,
    cameras,
    negative_format,
    film_type)
VALUES
(
    1111111,
    2000,
    "Bob the Builder",
    "Joseph, Joe",
    "1234",
    "Joseph, Joe",
    "Horror",
    "Arri Alexa 65",
    "35 mm",
    "U"
),
(
    2222222,
    2001,
    "Iron Person Thing",
    "Stark, Tony",
    "2345",
    "Stark, Tony",
    "Action",
    "Arri Alexa 65",
    "35 mm",
    "D"
),
(
    3333333,
    2002,
    "Iron Person Thing 2",
    "Stark, Tony",
    "2345",
    "Stark, Tony",
    "Action",
    "Arri Alexa 65",
    "35 mm",
    "D"
),
(
    4444444,
    2003,
    "The Greatest Movie Ever",
    "Johnson, John",
    "3456",
    "Johnson, John",
    "Romantic Comedy",
    "Arri Alexa 65",
    "35 mm",
    "U",
),
(
    5555555,
    2004,
    "The Greatest Movie Ever 2",
    "Johnson, John",
    "3456",
    "Johnson, John",
    "Romantic Comedy",
    "Arri Alexa 65",
    "35 mm",
    "U",
),
(
    6666666,
    2005,
    "The Greatest Movie Ever 3",
    "Johnson, John",
    "3456",
    "Johnson, John",
    "Romantic Comedy",
    "Arri Alexa 65",
    "35 mm",
    "U",
),
(
    7777777,
    2006,
    "The Greatest Movie Ever 4",
    "Johnson, John",
    "3456",
    "Johnson, John",
    "Romantic Comedy",
    "Arri Alexa 65",
    "35 mm",
    "U",
),
(
    8888888,
    2007,
    "The Greatest Movie Ever 5",
    "Johnson, John",
    "3456",
    "Johnson, John",
    "Romantic Comedy",
    "Arri Alexa 65",
    "35 mm",
    "U",
),
(
    9999999,
    2008,
    "The Greatest Movie Ever 6",
    "Johnson, John",
    "3456",
    "Johnson, John",
    "Romantic Comedy",
    "Arri Alexa 65",
    "35 mm",
    "U",
),
(
    1010101,
    2009,
    "Is This the Last Movie Yet?",
    "Seabaugh, Clayton",
    "9876",
    "Seabaugh, Clayton",
    "Horror",
    "Arri Alexa 65",
    "35 mm",
    "U"
);

INSERT INTO movies(
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
    1234567,
    "I am not going to do 10 more",
    "Seabaugh, Clayton",
    "Horror",
    "The cool kind",
    "The Negative Kind",
    "10",
    "imbd",
    "U"
);