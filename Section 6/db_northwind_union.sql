select
	e.last_name, e.first_name, 'EMPLOYEES' AS TYPE
from employees e
UNION ALL
select
	c.contact_name, 
	substring(c.contact_name, position(' ' in c.contact_name)+1, length(c.contact_name)-position(' ' in c.contact_name)),
	'CUSTOMER'
from customers c
UNION ALL
select
	s.contact_name, 
	substring(s.contact_name, position(' ' in s.contact_name)+1, length(s.contact_name)-position(' ' in s.contact_name)),
	'SUPPLIER'
from suppliers s
UNION ALL
select
	s.company_name, 
	NULL,
	'SHIPPERS'
from shippers s