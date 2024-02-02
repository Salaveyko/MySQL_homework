use storage;

DELIMITER |
create procedure get_meat_products()
begin
	select 
		p.id
		, p.brand as 'Brand'
		, m.type as 'Type'
		, m.part_of as 'Part of'
		, p.price_kg as 'Price per kilo'
		, p.weight_g as 'Wight in krams'
		, round(p.weight_g / 1000 * p.price_kg, 2)  as 'Cost'
		, p.expiration_date as 'Expiration date'
	from meat m
	join products p on m.product_id = p.id;
end;|

create procedure get_plants_products()
begin
	select 
		p.id
		, p.brand as 'Brand'
		, fv.plant as 'Plant'
		, p.price_kg as 'Price per kilo'
		, p.weight_g as 'Wight in krams'
		, round(p.weight_g / 1000 * p.price_kg, 2)  as 'Cost'
		, p.expiration_date as 'Expiration date'
	from fruits_and_vegetables fv
	join products p on fv.product_id = p.id;
end;|

create procedure get_expired_date_products()
begin
	SELECT 
		p.id,
		p.brand,
		p.expiration_date,
		m.type as 'Meat Type',
		m.part_of as 'Meat Part of',
		fv.plant as 'Plant'
	FROM products p
	LEFT JOIN meat m ON p.id = m.product_id
	LEFT JOIN fruits_and_vegetables fv ON p.id = fv.product_id
	WHERE p.expiration_date <= CURDATE() OR p.expiration_date IS NULL;
end;|