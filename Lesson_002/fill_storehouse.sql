USE storehouse;

INSERT  INTO clients
(name, phone, mail, is_active)
VALUE
("Alex", "+380967032810", "alex@gmail.com", true),
("Tania", "+380670312810", "tania@gmail.com", true),
("Rita", "+380967032811", "rita@gmail.com", false);

INSERT  INTO distributors
(name, product, is_active)
VALUE
("Audi", "Q8", true),
("Audi", "A7", true),
("BMW", "750", true),
("Porshe", "911", true);

INSERT  INTO store
(client_id, product_id)
VALUE
(1, 2),
(1, 3),
(2, 1),
(3, 4);

SELECT * FROM clients;
SELECT * FROM distributors;
SELECT * FROM store;