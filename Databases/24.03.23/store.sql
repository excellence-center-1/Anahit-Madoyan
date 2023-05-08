CREATE DATABASE shop;

CREATE TABLE customer(id serial, name varchar(20) NOT NULL,email varchar(50), phone varchar(12) NOT NULL, account_amount int NOT NULL);

CREATE TABLE shop(id serial, name varchar(50) NOT NULL, budget int NOT NULL);

CREATE TABLE product(id serial, name varchar(50) NOT NULL, supply_price int NOT NULL, sale_price int NOT NULL, description varchar(350));


CREATE TABLE user_purchase (id serial, customer_id INT NOT NULL, shop_id INT NOT NULL, product_id INT NOT NULL, count int NOT NULL, FOREIGN KEY (customer_id) REFERENCES customer(id), FOREIGN KEY (shop_id) REFERENCES shop(id), FOREIGN KEY (product_id) REFERENCES product(id));

INSERT INTO customer(name, email, phone, account_amount)
VALUES('cust_1', 'cust_1@gmail.com', '+37494856932', 100000),
('cust_2', 'cust_2@gmail.com', '+37477456987', 200000),
('cust_3', 'cust_3@gmail.com', '+37495632145', 300000),
('cust_4', 'cust_4@gmail.com', '+37455789654', 400000);

INSERT INTO shop(name, budget)
VALUES('shop_1', 1000000), 
('shop_2', 2000000),
('shop_3', 3000000),
('shop_4', 4000000);


INSERT INTO product(name, supply_price, sale_price, description)
VALUES('shoe', 4000, 5000, 'for men'),
('bag', 5000, 6000, 'for school'),
('hoody', 6000, 7000, 'for women'),
('dress', 7000, 8000, 'for girls');

INSERT INTO user_purchase(customer_id, shop_id, product_id, count) 
VALUES (1,3,2,4), (2,3,1,2),(3,1,2,2)

SELECT customer.name, shop.name, product.name, user_purchase.count FROM user_purchase INNER JOIN customer ON customer.id = user_purchase.customer_id;

