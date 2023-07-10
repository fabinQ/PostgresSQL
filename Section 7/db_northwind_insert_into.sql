--select product_id, unit_price, quantity into temp temp_order_details
--from order_details
--select * from temp_order_details
--select sum(unit_price * quantity) from temp_order_details
--delete from temp_order_details where product_id = 1

/*
insert into temp_order_details
select 
	product_id, 
	unit_price * 0.9, 
	quantity * 1.2
from order_details
where product_id = 1
*/
drop table temp_order_details