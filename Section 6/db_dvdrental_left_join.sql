select 
	f.title, f.release_year
	, coalesce (c.city, '*** not available ***') as store
from film as f
left outer join inventory as i on i.film_id = f.film_id
left join store as s on s.store_id = i.store_id
left join address as a on a.address_id = s.address_id
left join city as c on a.city_id = c.city_id
where f.title like 'A%' --and i.inventory_id is null