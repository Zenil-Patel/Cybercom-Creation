# 1. Create a database structure for product and categories. One product can be in more than one category and one category can have multiple products.

create database sales;

create table product(
	product_id int auto_increment primary key,
    product_name varchar(255),
    price float,
    category_id int not null
);

create table categories (
	id int auto_increment primary key,
    category_name varchar(255),
    manufactured_by varchar(255)
);

alter table product 
add foreign key (category_id) references categories(id) on delete cascade;


create table ProductCategory (
	product_id int,
    category_id int 
);

alter table productcategory 
add foreign key (product_id) references product(product_id) on delete cascade;

alter table productcategory 
add foreign key (category_id) references categories(id) on delete cascade;