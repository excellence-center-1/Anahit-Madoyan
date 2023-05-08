CREATE TABLE manufactory(id serial, name varchar(20) NOT NULL, web_site varchar(50), phone varchar(12) NOT NULL, adress varchar(25) NOT NULL);

CREATE TABLE provider(id serial, manufactory_id int NOT NULL, shop_id INT NOT NULL, name varchar(20) NOT NULL, phone varchar(12) NOT NULL, FOREIGN KEY (shop_id) REFERENCES shop(id),  FOREIGN KEY (manufactory_id) REFERENCES manufactory(id));

CREATE TABLE shop(id serial, name varchar(50) NOT NULL, address varchar(25) NOT NULL, budget int NOT NULL);

CREATE TABLE product_type(id serial, name varchar(50), provider_id int, manufactory_id int, FOREIGN KEY (manufactory_id) REFERENCES manufactory(id),  FOREIGN KEY (provider_id) REFERENCES provider(id));

CREATE TABLE product(id serial, shop_id int, manufactory_id int, name varchar(50) NOT NULL, measurement varchar(10) NOT NULL, description varchar(350), FOREIGN KEY (shop_id) REFERENCES shop(id),  FOREIGN KEY (manufactory_id) REFERENCES manufactory(id));

CREATE TABLE supply_price(id serial, product_type_id int, manufactory_id int, provider_id int, product_id int, date TIMESTAMP, current_price int NOT NULL, measurement varchar(10) NOT NULL,  FOREIGN KEY (manufactory_id) REFERENCES manufactory(id),  FOREIGN KEY (provider_id) REFERENCES provider(id),  FOREIGN KEY (product_type_id) REFERENCES product_type(id));

CREATE TABLE sale_price(id serial, shop_id int, product_id int, provider_id int, date TIMESTAMP, measurement varchar(10) NOT NULL, current_price int NOT NULL,  FOREIGN KEY (shop_id) REFERENCES shop(id), FOREIGN KEY (provider_id) REFERENCES provider(id),  FOREIGN KEY (product_id) REFERENCES product(id));


CREATE TABLE customer(id serial, name varchar(20) NOT NULL, email varchar(50), phone varchar(12) NOT NULL, account_amount int NOT NULL);

CREATE TABLE customer_purchase (id serial, sale_price_id int, customer_id INT NOT NULL, shop_id INT NOT NULL, product_id INT NOT NULL, count int NOT NULL, FOREIGN KEY (customer_id) REFERENCES customer(id), FOREIGN KEY (sale_price_id) REFERENCES sale_price(id), FOREIGN KEY (shop_id) REFERENCES shop(id), FOREIGN KEY (product_id) REFERENCES product(id));


