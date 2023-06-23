select
	order_date
	, shipped_date
	, shipped_date - order_date
	, age(shipped_date, order_date) as interval
from orders
order by interval desc;

select
	date_trunc('day', avg(age(shipped_date, order_date)))
from orders;

select 
	order_date
	, shipped_date
	, now()::date
	, age(now()::date, order_date)
from orders
where shipped_date is null;

select 
	order_date
	, shipped_date
	, age('2000-01-01', order_date)
from orders
where shipped_date is null;

select 
	order_date
	, coalesce(shipped_date,(order_date + interval '1 month')::date) as default_date
from orders;

select
	order_date
	, extract('year' from order_date) as year
	, extract('month' from order_date) as month
	, extract('day' from order_date) as day
from orders;