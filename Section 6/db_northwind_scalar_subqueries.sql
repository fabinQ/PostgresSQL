select
	max(unit_price)
from products;

select
	*
from products
where unit_price = (select max(unit_price) from products);

select
	p.product_name,
	p.unit_price,
	p.unit_price - (select avg(unit_price) from products) as deviation
from products as p
order by deviation desc;

select 
	min(extract('year' from hire_date))
from employees;

select 
	*
from employees
where extract('year' from hire_date) = (select min(extract('year' from hire_date)) from employees);