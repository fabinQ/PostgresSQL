--update categories
--set 
--	description = 'Bakery products'
--where category_id = 9

--select * from categories

/*
update products set
	quantity_per_unit ='pcs'
	, unit_price = 2.49
	, units_in_stock = units_in_stock-1
where product_id = 78
*/
--select * from products where product_id = 78

/*
select
		product_id
		,sum(quantity) as sum_quantity
from order_details od
group by product_id 
having sum(quantity) <100
order by sum_quantity asc
*/

/*
update products
	set discontinued = 1
where product_id in
(
	select
		product_id
	from order_details od
	group by product_id 
	having sum(quantity) <100
)
*/

select * from products