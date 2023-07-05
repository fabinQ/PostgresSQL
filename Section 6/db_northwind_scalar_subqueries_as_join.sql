select *
from orders o
where o.employee_id in
	(select 
		e.employee_id
	from employees e
	where e.last_name = 'Buchanan');
	
select *
from orders o
join employees e on e.employee_id = o.employee_id
where e.last_name = 'Buchanan';


select *
from orders o
where o.customer_id in
	(select c.customer_id
	from customers c
	where c.country = 'USA');
	
select *
from orders o
join customers c on c.customer_id = o.customer_id
where c.country = 'USA';