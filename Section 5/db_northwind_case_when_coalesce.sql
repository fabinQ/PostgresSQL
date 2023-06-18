select
	company_name
--	, region
	, case
		when region is null then country
		else region
	end as region
from suppliers