USE lab_mysql;

CREATE TABLE IF NOT EXISTS lab_mysql.cars(
id INT PRIMARY KEY,
vehicle_id VARCHAR(128), 
manufacturer CHAR(50), 
model VARCHAR(128), 
year SMALLINT,
color CHAR(10)); 

CREATE TABLE IF NOT EXISTS lab_mysql.customers(
customer_id VARCHAR(128) PRIMARY KEY, 
customer_name CHAR(128), 
phone_number VARCHAR(100), 
email VARCHAR(128),
address VARCHAR(1000),
city CHAR(100),
state_or_province CHAR(100),
country CHAR(100),
zip_or_postal_code VARCHAR(100));

CREATE TABLE IF NOT EXISTS lab_mysql.salespersons(
staff_id VARCHAR(128) PRIMARY KEY,
staff_name CHAR(200),
store_name CHAR(150));

CREATE TABLE IF NOT EXISTS lab_mysql.invoices(
invoice_num VARCHAR(128) PRIMARY KEY,
date DATE,
vehicle_id VARCHAR(128),
customer_id VARCHAR(128),
staff_id VARCHAR(128));