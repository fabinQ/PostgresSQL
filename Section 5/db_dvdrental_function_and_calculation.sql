SELECT 
	TITLE
	, PRICE
	, LENGTH
	, cast(LENGTH as decimal)/60 AS time_in_hours
FROM FILM_LIST