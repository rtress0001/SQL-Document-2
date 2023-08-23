--Primary Keys can't be empty or duplicated
create table customer(
	customer_id SERIAL primary key,
	frist_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(150),
	
);

--SELLER TABLE creation
create table seller(
	seller_id SERIAL primary key,
	brand_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150),
	
);

--Inventory Table creation
create table inventory(
	upc SERIAL primary key,
	product_amount Integer 	
);

--order table creation
create table Order_(
	order_id SERIAL primary key,
	order_date TIME default CURRENT_DATE,
	subtotal numeric(8,2),
	total_cost numeric(10,2),
	upc INTEGER not null, --not null cannot be enity
	foreign key(upc) references inventory(upc)
);

 --Product Table creation
create table product(
	item_ID Serial primary key,
	amount numeric(5,2),
	product_name VARCHAR(100),
	seller_id INTEGER not null, 
	upc INTEGER not null,
	foreign key(seller_ID) references brand(seller_id),
	foreign key(upc) references invectory(upc)
);

--cart table creation

create table cart(
	cart_id SERIAL primary key,
	customer_id INTEGER not null,
	order_ID INTEGER not null,
	foreign KEY(Customer_ID) references customer(customer_id)
	foreign KEY(order_id) references order_(order_id)
);
