CREATE TABLE users(
	id UUID primary key,
	username varchar(50),
	firstname varchar(50),
	lastname varchar(50)
);

CREATE TABLE product_category(
	id UUID primary key,
	name varchar(50)
);

CREATE TABLE product(
	id UUID primary key,
	name varchar(50),
	description varchar(1000),
	image_uri varchar(200),
	price numeric(12, 2),
	category UUID NOT NULL REFERENCES product_category(id),
	creator UUID NOT NULL REFERENCES users(id)
);
