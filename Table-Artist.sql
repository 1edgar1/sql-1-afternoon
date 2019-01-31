--Add 3 new artists to the artist table. ( It's already created )
INSERT INTO artist (name)
VALUES('Blink-182'),
	('ODESZA'),
    ('J-Cole');

--Select 10 artists in reverse alphabetical order.
SELECT * FROM artist
ORDER BY name desc
LIMIT 10;

--Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name asc
LIMIT 5;

--Select all artists that start with the word 'Black'.
SELECT * FROM artist
WHERE name LIKE 'Black%';

--Select all artists that contain the word 'Black'.
SELECT * FROM artist
WHERE name LIKE '%Black%';