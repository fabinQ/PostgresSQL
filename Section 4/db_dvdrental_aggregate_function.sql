select
	count(*) as record_number
	, min(price) as min_price
	, max(price) as max_price
	, sum(length) as total_length
	, avg(length) as avg_length
	, string_agg(title,'; ') as all_title
from public.film_list