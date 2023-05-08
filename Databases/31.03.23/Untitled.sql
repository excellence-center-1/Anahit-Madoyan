CREATE TABLE "manufactory" (
  "id" SERIAL,
  "name" varchar(20) NOT NULL,
  "web_site" varchar(50),
  "phone" varchar(12) NOT NULL,
  "adress" varchar(25) NOT NULL
);

CREATE TABLE "provider" (
  "id" SERIAL,
  "manufactory_id" int NOT NULL,
  "shop_id" INT NOT NULL,
  "name" varchar(20) NOT NULL,
  "phone" varchar(12) NOT NULL
);

CREATE TABLE "shop" (
  "id" SERIAL,
  "name" varchar(50) NOT NULL,
  "address" varchar(25) NOT NULL,
  "budget" int NOT NULL
);

CREATE TABLE "product_type" (
  "id" SERIAL,
  "name" varchar(50),
  "provider_id" int,
  "manufactory_id" int
);

CREATE TABLE "product" (
  "id" SERIAL,
  "shop_id" int,
  "manufactory_id" int,
  "name" varchar(50) NOT NULL,
  "measurement" varchar(10) NOT NULL,
  "description" varchar(350)
);

CREATE TABLE "supply_price" (
  "id" SERIAL,
  "product_type_id" int,
  "manufactory_id" int,
  "provider_id" int,
  "product_id" int,
  "date" timestamp,
  "current_price" int NOT NULL,
  "measurement" varchar(10) NOT NULL
);

CREATE TABLE "sale_price" (
  "id" SERIAL,
  "shop_id" int,
  "product_id" int,
  "provider_id" int,
  "date" timestamp,
  "measurement" varchar(10) NOT NULL,
  "current_price" int NOT NULL
);

CREATE TABLE "customer" (
  "id" SERIAL,
  "name" varchar(20) NOT NULL,
  "email" varchar(50),
  "phone" varchar(12) NOT NULL,
  "account_amount" int NOT NULL
);

CREATE TABLE "customer_purchase" (
  "id" SERIAL,
  "sale_price_id" int,
  "customer_id" INT NOT NULL,
  "shop_id" INT NOT NULL,
  "product_id" INT NOT NULL,
  "count" int NOT NULL
);

ALTER TABLE "provider" ADD FOREIGN KEY ("manufactory_id") REFERENCES "manufactory" ("id");

ALTER TABLE "provider" ADD FOREIGN KEY ("shop_id") REFERENCES "shop" ("id");

ALTER TABLE "product_type" ADD FOREIGN KEY ("provider_id") REFERENCES "provider" ("id");

ALTER TABLE "product_type" ADD FOREIGN KEY ("manufactory_id") REFERENCES "manufactory" ("id");

ALTER TABLE "product" ADD FOREIGN KEY ("shop_id") REFERENCES "shop" ("id");

ALTER TABLE "product" ADD FOREIGN KEY ("manufactory_id") REFERENCES "manufactory" ("id");

ALTER TABLE "supply_price" ADD FOREIGN KEY ("product_type_id") REFERENCES "product_type" ("id");

ALTER TABLE "supply_price" ADD FOREIGN KEY ("manufactory_id") REFERENCES "manufactory" ("id");

ALTER TABLE "supply_price" ADD FOREIGN KEY ("provider_id") REFERENCES "provider" ("id");

ALTER TABLE "sale_price" ADD FOREIGN KEY ("shop_id") REFERENCES "shop" ("id");

ALTER TABLE "sale_price" ADD FOREIGN KEY ("product_id") REFERENCES "product" ("id");

ALTER TABLE "sale_price" ADD FOREIGN KEY ("provider_id") REFERENCES "provider" ("id");

ALTER TABLE "customer_purchase" ADD FOREIGN KEY ("sale_price_id") REFERENCES "sale_price" ("id");

ALTER TABLE "customer_purchase" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "customer_purchase" ADD FOREIGN KEY ("shop_id") REFERENCES "shop" ("id");

ALTER TABLE "customer_purchase" ADD FOREIGN KEY ("product_id") REFERENCES "product" ("id");
