--Customer Table for the movie theater
create table customer(
	customer_id SERIAL primary key,
	frist_name VARCHAR(100),
	last_name VARCHAR(100),
	movie_mewards_memember_discount BOOl(1),
	billing_info VARCHAR(150),
	
);

--Concesion Table requires the customer table
create table concessions(
	inventory_id SERIAL primary key,
	employee_id VARCHAR(8),
	food_type VARCHAR(15),
	inventory_quantity VARCHAR(150),
	foreign key(billing_info) references customer(billing_info),
	foreign key (movie_mewards_memember_discount) references customer(movie_mewards_memember_discount)
	
);

--Tickets creation
create table tickers(
	ticket_id SERIAL primary key,
	order_date TIME default CURRENT_DATE,
	movie_name Varchar(30),
	seat Varchar(30),
	foreign key(billing_info) references customer(billling_info),
	foreign key (movie_mewards_memember_discount) references customer(movie_mewards_memember_discount)

);

 --Product Table creation
create table movie theater(
	movie_id Serial primary key,
	movie_name varchar(100),
	producer varchar(100),
	foreign key(seat) references tickets(seat)
);

