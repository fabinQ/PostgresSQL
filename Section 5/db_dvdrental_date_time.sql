--select now()::time, current_timestamp, current_date, current_time

select 
	rental_date
	, date_trunc('month',r.rental_date)
	, date_part('day', r.rental_date)
	, date_part('dow', r.rental_date)
	, extract('dow' FROM r.rental_date)
	, r.return_date
	, (r.return_date + INTERVAL '3 day')::DATE as excepted_return --nie trzeba dodawać INTERVAL
	, extract('day' from age(r.return_date, r.rental_date)) as duration
	, date('2030-05-01')
	, timestamp '2030-05-01 13:30:00.00'
from rental as r