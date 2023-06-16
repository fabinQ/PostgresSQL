--select
--	p.product_name
--	, p.unit_price
--	, p.quantity_per_unit
--from products as p
--order by product_name
--limit 10

--select
--	contact_name
--from customers
--order by company_name

--select
--	units_in_stock
--	, reorder_level
--from products
--order by units_in_stock desc, reorder_level desc;

select 
	*
from orders
order by order_date asc