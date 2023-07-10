--select * into temp temp_order_details from order_details
--select * from temp_order_details order by product_id;

/*
select 
 	sum(od.quantity * od.unit_price) as sum_of_quotient
from temp_order_details od
*/

/*
delete from temp_order_details
where product_id in
(
select 
	product_id
from products
where category_id = 1
)
*/

/*
update temp_order_details
set
	unit_price = unit_price*1.5
where product_id in
(select 
	p.product_id
from products p
where category_id = 2)
*/

drop table temp_order_details