--select distinct country, city from customers
--ORDER BY country;

--select distinct contact_title from customers;

select distinct ship_postal_code, ship_country from orders
ORDER BY ship_country;
