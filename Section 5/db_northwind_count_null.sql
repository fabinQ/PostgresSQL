select
	*
from orders
where shipped_date is null;

select
	*
from orders
where order_date is null;

select
	*
from customers
where fax is null;

select
	count(*)
from customers
where region is null;

select
	count(distinct country)
from customers
where region is null;

