/*
select
	f.first_name, f.last_name, count(*)
	into temp temp_actor
from actor f
join film_actor fa on f.actor_id = fa.actor_id
group by f.first_name, f.last_name
*/

--select * from temp_actor

--select * into temp temp_actor2 from actor where 1=0

select * from temp_actor2