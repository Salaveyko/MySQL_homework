use army;

insert into units (name, rank_of)
values
("Petrov V.A.", "soldier"),
("Lodarev P.S.", "soldier"),
("Leontev K.V.", "soldier"),
("Duhov R.M.", "soldier"),
("Burov O.S.", "major"),
("Ribakov N.G.", "major"),
("Derebanov V.Y.", "lieutenant colonel");

insert into weapons (serial_num, name, issued_id, recieved_id)
values
(12321, "Ak-47", 5, 1),
(12323, "Glock-20", 6, 1),
(12423, "Ak-47", 7, 2),
(17865, "Glock-20", 6, 2),
(12432, "Ak-47", 5, 3),
(23423, "Glock-20", 6, 3),
(12434, "Ak-47", 5, 4);

insert into platoon (id, unit_id)
values
(222, 1),
(232, 2),
(212, 3),
(200, 4);

select * from units;

select 
	w.serial_num as 'Serial number'
	, w.name as 'Name'
    , i.name as 'Issued by'
    , r.name as 'Recieved'
from weapons w
join units i on issued_id = i.id
join units r on recieved_id = r.id;

select p.id as 'Platoon', u.name as 'Name' 
from platoon p
join units u on p.unit_id = u.id;