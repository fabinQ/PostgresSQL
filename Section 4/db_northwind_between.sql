select
	*
from orders
where order_id not between 10400 and 10500;

select
	*
from orders
where order_date between '1997-01-01' and '1997-12-31'
order by order_date asc;

select 
	* 
from products
where unit_price between 10.001 and 20