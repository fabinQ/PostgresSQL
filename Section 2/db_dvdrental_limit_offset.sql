select
	f.fid
	, f.title
	, f.category
	, f.length
from film_list as f
limit 10 offset 40