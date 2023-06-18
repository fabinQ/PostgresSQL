select 
	*
from film_list
WHERE RATING NOT IN('G', 'PG', 'PG-13')
/*
"NC-17"
"PG"
"R"
"PG-13"
"G"
*/
