--select 
--* 
--from products as p
--where unit_price >=100 and units_in_stock >=10;

--select 
--*
--from products as p
--where p.units_in_stock=0 and p.reorder_level =0;

--select 
--*
--from products as p
--where p.units_in_stock=0 and p.reorder_level !=0;

select 
*
from products as p
where p.quantity_per_unit ilike '%bottle%' and (p.unit_price >= 100 and units_in_stock > 0 or units_in_stock>100)