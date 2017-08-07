#事前課題DB

###1.
```sql
-- orders table
CREATE TABLE orders(
	id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	customer_id INTEGER NOT NULL,
	order_date DATE NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
	);
	
-- customers table
CREATE TABLE customers(
	customer_id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	customer_name VARCHAR(255) NOT NULL,
	customer_address VARCHAR(255) NOT NULL,
	PRIMARY KEY(customer_id)
	);
	
-- order_details table
CREATE TABLE order_details(
	id INTEGER UNSIGNED NOT NULL,
	product_id INTEGER UNSIGNED NOT NULL,
	number INTEGER UNSIGNED NOT NULL,
	PRIMARY KEY(id,product_id),
	FOREIGN KEY (id) REFERENCES orders(id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
	);
	
-- products table 
CREATE TABLE products(
	product_id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(255) NOT NULL,
	product_price INTEGER UNSIGNED NOT NULL,
	PRIMARY KEY(product_id)
	);
	
```
###2.
```sql
SELECT SUM(number)
FROM prodcts
INNER JOIN order_details
ON products.product_id = order_details.product_id
WHERE product_name = "シャツ"
```
###3.
```sql
SELECT SUM(product_price*number)
FROM order_details
INNER JOIN products
ON order_details.product_id = products.product_id
WHERE id = 1
```
###4.
```sql
INSERT INTO customers VALUES(null,"z本舗","東京都");
INSERT INTO products VALUES(null,"シャツ",5000);
INSERT INTO products VALUES(null,"キャップ",1500);
INSERT INTO orders VALUES(5,4,DATE'2013-10-03');
```
