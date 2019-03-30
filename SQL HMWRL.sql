USE sakila;
SHOW TABLES;
SELECT * FROM actor;

#1
SELECT CONCAT(first_name, ' ' ,last_name) AS Actor_Name
FROM actor;
SELECT * FROM actor WHERE first_name = "Joe";
SELECT * FROM actor WHERE last_name LIKE "%GEN%";
SELECT * FROM actor WHERE last_name LIKE "%LI%";

SELECT * FROM country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

#3a
SHOW TABLES;
ALTER TABLE actor
ADD descrition BLOB;
#3b
Delete descrition FROM actor;


#4a

SHOW TABLES;
SELECT * 
FROM actor;

#4b ??? not sure what asked

#4c
SHOW TABLES
REPLACE INTO actor(first_name,'Williams')
VALUES('HARPO');


#5a 

SHOW CREATE TABLE adress;

#6a

SELECT staff.first_name, staff.last_name, address.address2
FROM staff,address
JOIN address ON
staff.address_id = address.address_id;
-- 


---
#6b
SELECT staff.first_name, staff.last_name
FROM staff
JOIN payment ON
staff.address_id = payment.address_id
where
---


#7a
SHOW TABLES;
SELECT * FROM film;
SELECT * FROM film WHERE title LIKE "Q%" OR title LIKE "K%";

#7b
#Alone Trip - ID 17
SHOW TABLES;
SELECT actors FROM film_list WHERE title = "ALONE TRIP";

#7c
SHOW TABLES;
SELECT * FROM customer;

#7d
SHOW TABLES;
SELECT title FROM film_list WHERE category = "Family";

#7e

SHOW TABLES;
SELECT count(rental_duration) as countFn
FROM film
group by title
order by title desc

#7f 

SHOW TABLES;
SELECT * FROM sales_by_store;


