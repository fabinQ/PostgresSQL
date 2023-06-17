--select
--	country
--	, count(country) as cnt
--from customers
--group by country;

--select 
--	ship_country
--	, count(ship_country) as count_ship
--from orders
--group by ship_country
--order by count_ship desc;

select
	supplier_id
	, category_id
	, avg(unit_price) as avg_price
from products
group by category_id, supplier_id
order by avg_price desc;