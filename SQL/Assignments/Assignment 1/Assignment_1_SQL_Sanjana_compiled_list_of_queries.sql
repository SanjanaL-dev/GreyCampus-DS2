SELECT first_name, last_name FROM actor
GROUP BY first_name, last_name
HAVING COUNT(actor_id) >= 2

SELECT * FROM actor
WHERE first_name = 'Susan' AND last_name = 'Davis';

SELECT first_name, last_name,COUNT(actor_id) FROM actor
GROUP BY first_name, last_name
HAVING COUNT(actor_id) >= 2;

SELECT * FROM payment;

SELECT customer_id FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) >= 110
ORDER BY customer_id ASC;

SELECT customer_id,staff_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) >= 110
ORDER BY customer_id ASC;

SELECT * FROM film;

SELECT COUNT(film_id) FROM film
WHERE title ILIKE 'J%';

SELECT * FROM customer;

SELECT customer_id, first_name, last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;

SELECT * FROM film;

SELECT COUNT(film_id) FROM film
WHERE title ILIKE '%Truman%';

SELECT * FROM payment;

SELECT SUM(amount) FROM payment;

SELECT * FROM payment;

SELECT customer_id,COUNT(customer_id) as Total_Transactions,SUM(amount) as total_amount_paid
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


SELECT * FROM payment;

SELECT customer_id,COUNT(customer_id) as Total_Transactions,SUM(amount) as total_amount_paid
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 1;

SELECT * FROM customer;

SELECT customer_id FROM customer
WHERE active = 0;


SELECT * FROM payment;

SELECT COUNT(payment_id) FROM payment
WHERE amount > 5;
