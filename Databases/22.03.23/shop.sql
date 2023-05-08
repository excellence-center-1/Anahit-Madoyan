CREATE DATABASE shop;
\c shop

CREATE TABLE customer(cust_id serial, name varchar(20), email varchar(20), phone int, account_amount int);
INSERT INTO customer(name, email, phone, account_amount)
VALUES('cust_1', 'cust_1@gmail.com', '094856932', 100000),
('cust_2', 'cust_2@gmail.com', '077456987', 200000),
('cust_3', 'cust_3@gmail.com', '095632145', 300000),
('cust_4', 'cust_4@gmail.com', '055789654', 400000);

CREATE TABLE shop(shop_id serial, name varchar(50), budget int);

INSERT INTO shop(name, budget)
VALUES('shop_1', 1000000), 
('shop_2', 2000000),
('shop_3', 3000000),
('shop_4', 4000000);

CREATE TABLE product(product_id serial, name varchar(50), supply_price int, sale_price int, description varchar(150), shipper varchar(100));

INSERT INTO product(name, supply_price, sale_price, shipper)
VALUES('shoe', 4000, 5000, 'shipper_1'),
('bag', 5000, 6000, 'shipper_2'),
('hoody', 6000, 7000, 'shipper_3'),
('dress', 7000, 8000, 'shipper_4');


CREATE TABLE relation(id int, shop_id int, product_id int);

