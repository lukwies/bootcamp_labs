
-- 1. Drop column picture from staff.
ALTER TABLE sakila.staff
	DROP COLUMN picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer.
-- Update the database accordingly.
INSERT INTO sakila.staff VALUES (3, 'Tammy', 'Sanders', 79, NULL, 'tammy.sanders@sakilastaff.com', 2, 1, 'Tammy',
		'1b9c61b2be5459aa3c193d0f224ea009', NOW());

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
INSERT INTO sakila.rental VALUES(16050, NOW(), 1, 130, NULL, 1, NOW());