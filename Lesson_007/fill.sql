use storage;

insert into products
(brand, price_kg, weight_g, expiration_date)
values
('Mu-u-u', 15.5, 1553, '2022-03-05'),
('Porkie', 10.2, 1450, '2040-03-05'),
('Dream Fruit', 3.7, 1030, '2024-03-05'),
('Mu-u-u', 13.5, 1251, '2040-03-05'),
('Farmer', 1.0, 1000, '2022-03-05');

insert into meat
(type, part_of, product_id)
values
('beef', 'sternum', 1),
('pork', 'shoulder', 2),
('beef', 'leg', 4);

insert into fruits_and_vegetables
(plant, product_id)
values
('mandarin', 3),
('potato', 5);