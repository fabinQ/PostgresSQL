SELECT
	upper(company_name) as company
	, lower (contact_title) as contact_title
	, concat(left(company_name,3),'|', right(city,3)) as abbreviation
	, address
	, case
		when position(',' in address)>0 
			then substring (address from 1 for position(',' in address)-1)
		else address
	end as address_1
	, case
		when position(',' in address)>0 
			then substring (address from position(',' in address)+1 for length(address)- position(',' in address))
		else ''
	end as address_2
FROM customers;