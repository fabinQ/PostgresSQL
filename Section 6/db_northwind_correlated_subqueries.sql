select 
	*
	, (select avg(psub.unit_price) from products psub where psub.category_id = p.category_id)
from products p
where p.unit_price > (select avg(psub.unit_price) from products psub where psub.category_id = p.category_id)
order by unit_price asc;

select 
	od.order_id
	, p.product_name
	, od.unit_price * od.quantity as value
	, (select sum(od1.unit_price * od1.quantity) from order_details od1 where od1.order_id = od. order_id) as sum_of_value
	, 100* od.unit_price * od.quantity/ (select sum(od1.unit_price * od1.quantity) from order_details od1 where od1.order_id = od. order_id) as order_procent
from order_details od
join products p on p.product_id = od.product_id;
