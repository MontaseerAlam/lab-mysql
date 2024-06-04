-- Delete a row with duplicate values 
DELETE FROM lab_mysql.cars
WHERE id = 4;

-- look at the table after deletion
SELECT * FROM cars;
