create database if not exists army;

use army;

create table if not exists units(
	id int primary key auto_increment,
    name varchar(50) not null,
    rank_of varchar(50) not null
);

create table if not exists platoon(
	id int primary key,
    unit_id int unique not null,
    foreign key(unit_id) references units(id)
);

create table if not exists weapons(
	serial_num int not null,
    name varchar(20) not null,
    issued_id int not null,
    recieved_id int not null,
    primary key(serial_num),
    foreign key(issued_id) references units(id),
    foreign key(recieved_id) references units(id)
);