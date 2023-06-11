SELECT 
	c.company_name AS "FIRMA"
	, c.contact_name AS "REPRESENTIVE"
FROM customers AS c;

SELECT 
	p.product_name AS "PRODUCT"
	, p.unit_price AS "PRICE"
	, p.units_in_stock AS "AMOUNT"
FROM products AS p