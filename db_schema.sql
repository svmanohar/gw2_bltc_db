CREATE TABLE items  (
	id VARCHAR,
	buy_price INT,
	buy_quantity INT,
	lastUpdated timestamptz,
	name VARCHAR,
	sell_price INT,
	sell_quantity INT,
	PRIMARY KEY (id)


)

CREATE TABLE sales (
id VARCHAR,
item_id VARCHAR,
price INT,
quantity INT,
created timestamptz,
purchased timestamptz,
PRIMARY KEY (id)
)

ALTER TABLE sales
	FOREIGN KEY (item_id) REFERENCES items (id)