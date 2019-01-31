
DROP TABLE PERSON;

--Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
--id should be an auto-incrementing id/primary key - Use type: SERIAL

CREATE TABLE Person (
id SERIAL PRIMARY KEY
, name TEXT NOT NULL
, age INTEGER NOT NULL
, height INTEGER NOT NULL
, city TEXT NOT NULL
, favorite_color TEXT NOT NULL
);

--Add 5 different people into the person database.
--Remember to not include the person_id because it should auto-increment.

INSERT INTO Person (name,age,height,city,favorite_color)
VALUES('Bob',23,182,'Denver','Blue')
,('Timmy',18,180,'Dallas','Red')
,('Ashley',25,145,'LA','Purple')
,('Marky',40,185,'Reno','Yellow')
,('Rick',50,123,'Phoenix','Brown');

--List all the people in the person table by height from tallest to shortest.

SELECT * FROM person
ORDER BY height desc;

--List all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height asc;

--List all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age desc;

--List all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;

--List all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;

--List all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20 OR age > 30;

--List all the people in the person table that are not 27 (Use not equals).
SELECT * FROM person
WHERE age != 27;

--List all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color != 'Red';

--List all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

--List all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

--List all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('Orange','Green','Blue') ;

--List all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('Yellow','Purple') ;