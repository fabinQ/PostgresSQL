select 
	p.product_name
from products as p
left outer join order_details as od on p.product_id = od.product_id
where od.order_id is null;

select
	c.company_name,
	o.order_id
from customers as c
left join orders as o on o.customer_id = c.customer_id
where o.customer_id is null;

select
	*
from customers as c
left join orders as o on o.customer_id = c.customer_id;

select
	*
from customers as c
right join orders as o on o.customer_id = c.customer_id;