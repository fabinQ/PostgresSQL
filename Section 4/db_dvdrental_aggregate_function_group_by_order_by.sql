select
	category
	, price
	, count(*) as record_number
	, min(price) as min_price
	, max(price) as max_price
	, sum(length) as total_length
	, avg(length) as avg_length
from public.film_list
group by category, price
order by category, price
limit 10 offset 40 