select
	cu.company_name
--	, ord.customer_id
--	, ord.order_date
--	, ordd.order_id
--	, ordd.unit_price
--	, ordd.quantity
	, round(sum(ordd.unit_price*ordd.quantity)::numeric,2) as sum_of_value
from customers as cu
join orders as ord on cu.customer_id = ord.customer_id
join order_details as ordd on ord.order_id = ordd.order_id
where order_date BETWEEN '1997-01-01' AND '1997-12-31'
group by cu.company_name
order by sum_of_value desc