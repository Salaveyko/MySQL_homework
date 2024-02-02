CREATE DATABASE IF NOT EXISTS storehouse;

USE storehouse;

CREATE TABLE IF NOT EXISTS distributors
(
	id INT NOT NULL auto_increment,
    name VARCHAR(25) NOT NULL,
    product VARCHAR(25) NOT NULL,
    is_active BOOL DEFAULT false,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS clients
(
	id INT NOT NULL auto_increment,
    name VARCHAR(25) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    mail VARCHAR(25) NOT NULL UNIQUE,
    is_active BOOL DEFAULT false,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS store
(
	client_id INT NOT NULL,
	product_id INT NOT NULL,
    FOREIGN KEY(client_id) REFERENCES clients (id),
    FOREIGN KEY(product_id) REFERENCES distributors (id)
);