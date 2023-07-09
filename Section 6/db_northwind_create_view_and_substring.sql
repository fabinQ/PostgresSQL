create view customer_names
AS
	select 
		substring(c.contact_name, position(' ' in c.contact_name)+1, length(c.contact_name)) as last_name
		, left(c.contact_name, position(' ' in c.contact_name)-1) as first_name
		, c.contact_title
	from customers c;
