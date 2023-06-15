select
	p.product_name
	, p.unit_price
	, p.quantity_per_unit
from products as p
limit 10 offset 20