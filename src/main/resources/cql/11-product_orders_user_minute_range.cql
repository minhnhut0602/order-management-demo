//All product orders for an individual within a given daily minute range.

drop table product_orders_user_minute_range;

create table product_orders_user_minute_range (
	user_id text,
	minute int,
	date timestamp,
	order_id text,
	product_id text,
	order_date timestamp,
	PRIMARY KEY((user_id, minute), date, order_id)
) WITH CLUSTERING ORDER BY (date desc);

INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 0, '2013-08-09', 'O1', 'P1');
INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 1, '2013-08-09', 'O2', 'P1');
INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 1, '2013-08-09', 'O3', 'P1');
INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 1, '2013-08-10', 'O4', 'P1');
INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 2, '2013-08-09', 'O5', 'P1');
INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 3, '2013-08-09', 'O6', 'P1');
INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 3, '2013-08-10', 'O7', 'P1');
INSERT INTO product_orders_user_minute_range (user_id, minute, date, order_id, product_id) VALUES ('U1', 3, '2013-08-09', 'O8', 'P1');

select * from product_orders_user_minute_range where user_id='U1' and date < '2013-08-11' and date > '2013-08-01' and minute=1;
