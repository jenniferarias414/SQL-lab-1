CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
	age INTEGER,
	height INTEGER,
	city VARCHAR(50),
	favorite_color VARCHAR(50)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jenny', 40, 100, 'Dallas', 'black'),
('Bob', 33, 300, 'Milwaukee', 'pink'),
('Jimmy', 25, 400, 'New York', 'blue'),
('Sue', 30, 300, 'Miami', 'yellow'),
('Mike', 45, 301, 'Cudahy', 'green');

SELECT *
FROM person
ORDER BY height DESC;

SELECT *
FROM person
ORDER BY height;

SELECT *
FROM person
ORDER BY AGE DESC;

SELECT *
FROM person
WHERE age > 26;

SELECT *
FROM person
WHERE age = 30;

SELECT *
FROM person
WHERE age < 30 OR age >35;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color != 'red';

SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT *
FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT *
FROM person
WHERE favorite_color IN ('orage', 'green', 'blue');

SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');





