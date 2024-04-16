CREATE DATABASE PRACTIC_SST;

USE PRACTIC_SST;


CREATE TABLE employee_info(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  salary INT NOT NULL);


  INSERT INTO employee_info(id,name,salary)   VALUES
  (111, 'SAGAR', 50001),
  (211, 'ADESH', 90001),
  (311, 'MANTHAN',60001),
  (411, 'MAYANK', 50001);


  SELECT * FROM employee_info;

  SELECT * FROM employee_info WHERE salary >60000;

  --KEYS
  --Primary Key
  --It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)
  --There is only 1 PK & it should be NOT null.

  --Foreign Key
  --A foreign key is a column (or set of columns) in a table that refers to the primary key of another table 
  --There can be multiple FKs.
  --FKs can have duplicate & null Values.

  --Constraints
  --SQL constraints are used to specify rules of data in a table.
  --NOT NULL    : columns cannot have null value  ( col1 int NOT NULL)
  --UNIQUE        : all values in column are different (col2 int UNIQUE)
  --PRIMARY KEY    : make a column unique & not null but used only for one
					--id int PRIMARY KEY
					--CREATE TABLE temp(
					--id int not null,
					--PRIMARY KEY (id));
--FOREIGN KEY : prevent actions that would destroy links between tables
			--CREATE TABLE temp(
			--cust_id int ,
			--FOREIGN KEY (cust_id) references customer(id)
			--);

--DEFAULT      : set to default value of a column
			--salary INT DEFAULT 50001
--CHECK      : it can limit the values allowed in a column
			--CREATE TABLE city (
			--	id INT PRIMARY KEY,
			--	city VARCHAR(50),
			--	age INT,
			--	CONSTRAINT age_check CHECK(age >= 18 AND city='DELHI')
			--	);

			--CREATE TABLE newTab(
			--	age INT CHECK (age >= 18)
			--	);
