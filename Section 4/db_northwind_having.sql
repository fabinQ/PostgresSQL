select
	category_id
	, sum(units_in_stock) as units_in_stock
from products
group by category_id
having sum(units_in_stock) >=500;

select 
	country
	, count(*) as sum_country
from customers
group by country
having count(country)>=10
order by sum_country desc;

select 
	contact_title
	, count(contact_title) as contact_title
from customers
group by contact_title
having count(contact_title)>=5
order by count(contact_title) desc;