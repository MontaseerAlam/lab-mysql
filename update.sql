USE lab_mysql;

-- Upadate the salesperson table for typo
UPDATE lab_mysql.salespersons
SET store_name = 'Miami'
WHERE staff_id = '00005';

-- Appending customer table with email address
-- first create a temporary table with the email addresses
CREATE TEMPORARY TABLE customer_email(
customer_name VARCHAR(128), 
email VARCHAR(128)); 

-- Check if the table is created
SELECT * FROM customer_email;

-- look at the original table
SELECT * FROM customers;

-- Inject data into the temporary table
INSERT INTO customer_email(customer_name, email)
VALUES
	('Pablo Picasso', 'ppicasso@gmail.com'),
    ('Abraham Lincoln', 'lincoln@us.gov'),
    ('Napoléon Bonaparte', 'hello@napoleon.me');

-- do an inner join between this table and customers table around customer_name
SELECT customers.customer_id, customers.customer_name, customers.phone_number, customer_email.email, customers.address, customers.city, customers.state_or_province, customers.country, customers.zip_or_postal_code
FROM lab_mysql.customers
INNER JOIN customer_email
ON lab_mysql.customers.customer_name = customer_email.customer_name;