SELECT * FROM public.order_details
ORDER BY order_id desc;

--insert into categories (category_id, category_name)
--values(9, 'Bread')
--returning category_id;

--insert into products
--values(78, 'Baguetta', 3, 9, 'piece', 2, 99, 0, 0, 0);

--insert into orders
--values(11078, 'FRANK', 7, NOW(),NOW()+'3 DAYS', NULL, 2, 1, 'Ben Benson', 'Padre Rico 8', 'Pueblo Piernico', NULL, '12-345', 'San Escobar' )

--insert into order_details
--values(11078, 78, 2, 1, 0)