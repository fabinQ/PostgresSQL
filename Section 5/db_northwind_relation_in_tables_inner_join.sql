SELECT
	pr.product_name
	, ca.category_name
from products as pr
join categories as ca on ca.category_id = pr.category_id;

SELECT
	pr.product_name
	, su.company_name
from products as pr
join suppliers as su on su.supplier_id = pr.supplier_id;

SELECT
	pr.product_name
	, ca.category_name
	, pr.product_name
	, su.company_name
from products as pr
inner join categories as ca on ca.category_id = pr.category_id
inner join suppliers as su on su.supplier_id = pr.supplier_id;

SELECT
	od.unit_price, od.quantity
	, ord.order_date
	, pr.product_name
	, cu.company_name
from order_details as od
join orders as ord on od.order_id = ord.order_id
join products as pr on pr.product_id = od.product_id
inner join customers as cu on cu.customer_id = ord.customer_id;