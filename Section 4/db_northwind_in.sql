select
	city
from customers
where city in ('Berlin','London','Madrid');

select
	country
from customers
where country not in ('Brazil','USA','Venezuela');

select
	*
from products
where category_id not in ('1','2','3');

select
	*
from products
where category_id not in ('1','2','3') and  quantity_per_unit in ('25 - 825 g cans', '4 - 450 g glasses','12 - 12 oz cans','10 - 500 g pkgs.');