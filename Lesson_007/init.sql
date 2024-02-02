create database if not exists storage;
-- drop database storage;
use storage;

create table if not exists products(
	id int primary key auto_increment,
    brand varchar(50) not null,
    price_kg double not null,
    weight_g double not null,
    expiration_date date
);

create table if not exists meat(
	product_id int primary key,
    type varchar(50) not null,
	part_of varchar(50) not null,
    
    foreign key(product_id) references products(id)
);

create table if not exists fruits_and_vegetables(
	product_id int primary key,
    plant varchar(50) not null,
    
    foreign key(product_id) references products(id)
);