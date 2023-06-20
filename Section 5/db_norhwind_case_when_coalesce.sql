select 
	company_name
	, coalesce (region, country) as region_country
	, coalesce( fax, phone) as fax_phone
	, coalesce (homepage, 'no website')
from suppliers;

select 
	order_id
	, coalesce(cast(shipped_date as varchar(10)),'not shipped yet') as shipped_info	
from orders
order by shipped_info desc;

select
	product_name
	, category_id
	,case
		when category_id =1 then 'Beverages'
		when category_id =2 then 'Condiments'
		when category_id =3 then 'Confections'
		else 'other'
	end as category
from products;