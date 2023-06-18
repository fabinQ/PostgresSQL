select
	rental_date
	, customer_id
	, return_date
	, case
		when return_date is null then 'UNKNOWN'
		else cast(return_date as CHAR(10))
	end as description
	, coalesce(cast(return_date as char(10)), 'unknown') as description_2
from rental
where rental_date >= '2005-08-23 22:26:47'
order by rental_date