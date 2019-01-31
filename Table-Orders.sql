DROP TABLE Orders:

--Create a table called orders that records: person_id, product_name, product_price, quantity.
CREATE TABLE Orders(
person_id SERIAL PRIMARY KEY,
product_name VARCHAR(60) NOT NULL,
product_price INTEGER NOT NULL,
quantity INTEGER NOT NULL
)

--Add 5 orders to the orders table.
--Make orders for at least two different people.
--person_id should be different for different people.

INSERT INTO Orders(person_id,product_name,product_price,quantity)
VALUES (0,'apples',5,8),
    (1,'pizza',8,10),
    (2,'burger',7,2),
    (3,'sandwhich',5,1),
    (4,'pie',1,3),
    (5,'taco',5,3);


--Select all the records from the orders table.
SELECT * FROM orders;

--Calculate the total number of products ordered.
SELECT SUM (quantity) FROM orders;


--Calculate the total order price.
SELECT SUM (product_price *quantity) FROM orders;

--Calculate the total order price by a single person_id.
SELECT SUM (product_price*quantity) FROM Orders WHERE person_id=0;

--Count how many people live in Lethbridge.
SELECT COUNT (*) FROM employee WHERE city='Lethbridge';

