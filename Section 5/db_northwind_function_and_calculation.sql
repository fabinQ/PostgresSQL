select
	*
	, round(cast(unit_price * quantity as decimal),2) as total
	, round(cast(unit_price * quantity * (1-discount) as decimal),2) as total_after_discount
	, round(cast((unit_price * quantity)-(unit_price * quantity * (1-discount))as decimal),2) as discount_value
from order_details
where (unit_price * quantity)-(unit_price * quantity * (1-discount)) >100
order by discount_value desc