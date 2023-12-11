CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
	person_id INTEGER REFERENCES person(person_id),
  product_name VARCHAR(50),
	product_price FLOAT,
	quantity INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (7, 'gum', 1.50, 3),
(7, 'shoes', 25, 1),
(8, 'juice', 3.25, 2),
(8, 'milk', 3, 1),
(9, 'puppy', 230.58, 2);

SELECT *
FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT
    person_id,
    SUM(product_price * quantity)
FROM orders
GROUP BY person_id;



