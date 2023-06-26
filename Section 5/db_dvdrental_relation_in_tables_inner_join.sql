--select * from customer where address_id = 5
--select * from address where address_id = 5
--select * from city where city_id = 463
--select * from country where country_id = 50

SELECT
	c.first_name, c.last_name
	, a.address, a.district
	, ci.city
	, co.country
FROM customer as c
JOIN address as a ON c.address_id = a.address_id 
INNER JOIN city AS ci on ci.city_id = a.city_id
JOIN country as co on co.country_id = ci.country_id
--where first_name = 'Mary' and  last_name = 'Smith'