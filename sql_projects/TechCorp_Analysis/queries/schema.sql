-- MEMBUAT DATABASE
create database techcorp;
use techcorp;

show tables from techcorp;

-- CREATE PRODUCTS TABLE
create table Products (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT 
    );
select * from products;

-- CREATE CUSTOMERS TABLE
create table Customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(200)
);
select * from customers;

-- CREATE ORDERS TABLE
create table Orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
select * from orders;

-- CREATE ORDER DETAILS TABLE
create table OrderDetails (
	order_detail INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id) 
);
select * from orderdetails;

-- CREATE EMPLOYEES TABLE
create table Employees (
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR (100),
    phone VARCHAR(20),
    hire_date DATE,
    department VARCHAR(50)
);
select * from employees;

-- CREATE SUPPORT TICKETS TABLE
create table SupportTickets (
	ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    issue TEXT,
    status VARCHAR(20),
    created_at DATETIME,
    resolved_at DATETIME,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
select * from supporttickets;

-- CREATE MISSING COLUMN
select * from products;
ALTER TABLE Products ADD COLUMN discount DECIMAL(5,2) DEFAULT 0;
select * from products;
