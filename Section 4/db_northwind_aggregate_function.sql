select
	count(*)as count_product
	, avg(unit_price) as avg_price
	, min (unit_price) as min_price
	, max (unit_price) as max_price
	, avg (unit_price) as avg_price
	, sum(units_in_stock) as unit_in_stock
	, string_agg(product_name, ', ') as product_name
from products