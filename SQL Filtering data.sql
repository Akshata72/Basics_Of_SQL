create database Customers;
create table Customer(
Customer_Id uniqueidentifier NOT NULL
DEFAULT newid(),
first_name varchar(255) NOT NULL,
last_name varchar(255) NOT NULL,
Age int Check (Age>=18) NOT NULL,
phone bigint UNIQUE,
city varchar(255),
state varchar(255));

insert into Customer(first_name,last_name,Age,phone,city,state) values
       ('Pawan','Deep',31,7219248597,'Juhu','Nepal'),
	   ('Samarth','Sabale',20,7821454526,'Ambejogai','MH'),
	   ('Gaurav','Rawat',24,9845754694,'Pune','MH'),
	   ('Snehal','Patil',23,8284567548,'Pune','MH'),
	   ('Remant','Agarwal',25,8483125475,'Dhanora','AP'),
	   ('Arunidita','Patil',27,7387323706,'Dehu','UP'),
	   ('Radha','Randhawa',23,7378090741,'Gokul','Gujrat'),
	   ('Krish','Roshan',32,8303004200,'Dhanora','MH'),
       ('Ruturaj','Singh',18,9524855442,'Keral','AP'),
	   ('Balaji','Panchal',26,9545147147,'Latur','MH'),
	   ('Daya','Kumar',27,8606425784,'Latur','MH');

	   select * from Customer;

/***************SQL Server SELECT DISTINCT********************/

--A) DISTINCT one column
select state from Customer 
order by state;

select DISTINCT state 
from Customer
order by state;

--B) DISTINCT multiple columns 
select city, state
from Customer
order by state,city;

select DISTINCT city, state
from Customer
order by city,state;

-- DISTINCT vs. GROUP BY
select city, state 
from Customer
Group By city,state
Order by city, state;


/*************SQL Server WHERE****************/

--A) Finding rows by using a simple equality
select city, state 
from Customer
WHERE state='MH'
Order by city;

--B) Finding rows that meet two conditions
select first_name,last_name,city, state
from Customer
WHERE city='Pune' AND last_name = 'Patil'
Order by city;

--C) Finding rows by using a comparison operator
select first_name,last_name,city, state
from Customer
WHERE city='Pune' OR last_name = 'Patil'
Order by city;

--D) Finding rows that meet any of two conditions
select first_name,last_name,Age,city, state
from Customer
WHERE Age>25 OR state = 'MH'
Order by city;

--E) Finding rows with the value between two values
select first_name,last_name,Age,city, state
from Customer
WHERE Age BETWEEN 20 AND 30
Order by first_name,last_name;

--F) Finding rows that have a value in a list of values
select first_name,last_name,Age,city, state
from Customer
WHERE Age IN (20,23)
Order by first_name,last_name;

--G) Finding rows whose values contain a string
select first_name,last_name,Age,city, state
from Customer
WHERE first_name LIKE '%Kri%'
Order by first_name,last_name;

/*************SQL Server AND*****************/

--A) Using AND operator
select * from Customer
where Age>=20 AND state ='MH'
order by first_name;

--B) Using multiple AND operators
select * from Customer
where Age>=20 AND state ='MH' AND city = 'Pune'
order by first_name;

--C) Using the AND operator with other logical operators
select * from Customer
where Age>=20 OR state ='MH' AND city = 'Pune'
order by first_name;

select * from Customer
where Age>=20 AND state ='MH' OR city = 'Dhanora'
order by first_name;

select * from Customer
where (Age>=20 OR state ='MH') AND city = 'Pune'
order by first_name;

/**************SQL Server OR operator*****************/
--A) Using OR operator
select * from Customer
where Age>=20 OR state ='MH'
order by first_name;

--B) Using multiple OR operators
select * from Customer
where state ='MH'  OR Age>=25 OR state ='Gujrat'
order by first_name;

--C) Using OR operator with AND operator
select * from Customer
where Age>=20 OR state ='MH' AND city = 'Pune'
order by first_name;

select * from Customer
where Age>=20 AND state ='MH' OR city = 'Dhanora'
order by first_name;

select * from Customer
where (Age>=20 OR state ='MH') AND city = 'Pune'
order by first_name;

/*************SQL Server IN Operator***************/
--A) Using SQL Server IN with a list of values
select * from Customer
where state in('MH','AP')
order by first_name;

select * from Customer
where state NOT in('MH','AP')
order by first_name;

--B) Using SQL Server IN operator with a subquery
select first_name,last_name,Age
from Customer
where city in(select city from Customer
where city = 'Pune');

/***************SQL Server BETWEEN Operator**************/

---A) Using SQL Server BETWEEN with numbers 
select first_name,last_name,Age
from Customer
where Age BETWEEN 20 AND 25
Order by first_name;

select first_name,last_name,Age
from Customer
where Age NOT BETWEEN 20 AND 25
Order by first_name;

/***************SQL Server LIKE operator**************/

--The % (percent) wildcard
SELECT
    customer_id,
    first_name,
    last_name
FROM
    Customer
WHERE
    last_name LIKE 'p%'
ORDER BY
    first_name;

SELECT
    customer_id,
    first_name,
    last_name
FROM
    Customer
WHERE
    last_name LIKE '%l'
ORDER BY
    first_name;

SELECT
    customer_id,
    first_name,
    last_name
FROM
    Customer
WHERE
    last_name LIKE 'p%l'
ORDER BY
    first_name;

--The _ (underscore) wildcard
SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '_a%' 

SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '%a_' 

---The [list of characters] wildcard

SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '[as]%' 


SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '%[as]' 


SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '%[as]%' 
--The [character-character] wildcard

SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '[a-p]%' 


SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '%[a-e]'

--The [^Character List or Range] 

SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '[a-p]%' 

SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name LIKE '[^a-p]%' 

--The NOT LIKE operator

SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name NOT LIKE '[^a-p]%' 


SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name NOT LIKE '%a_' 


SELECt   customer_id,first_name,last_name
from Customer
WHERE last_name NOT LIKE '%a' 

/****************SQL Server Alias**************/

select first_name ,last_name 
from Customer
Order by first_name,last_name;


select first_name+' '+ last_name AS FullName
from Customer
Order by first_name,last_name;

select first_name+' '+ last_name AS 'Full Name'
from Customer
Order by first_name,last_name;

select city AS 'In Maharashtra'
from Customer
where state = 'MH'
Order by city;

select city AS 'In Maharashtra'
from Customer
where state = 'MH'
Order by 'In Maharashtra';

--SQL Server table alias
select first_name last_name,last_name first_name
from Customer
order by first_name,last_name;