--SQL Server OFFSET FETCH
select * from Customer;

select first_name,last_name,phone
from Customer
order by 
last_name
OFFSET 5 rows;

--SQL Server OFFSET and FETCH
select first_name,last_name,phone
from Customer
order by 
last_name
OFFSET 5 rows
FETCH NEXT 2 ROWS ONLY;

select first_name,last_name,phone
from Customer
order by 
last_name
OFFSET 5 rows
FETCH NEXT 3 ROWS ONLY;

--SQL Server SELECT TOP 
--1) Using TOP with a constant value
select Top 5 first_name,last_name,phone
from Customer
order by 
first_name;

--2) Using TOP to return a percentage of rows
select Top 20 Percent
first_name,last_name,phone
from Customer
order by 
first_name;

--3) Using TOP WITH TIES to include rows that match the values in the last row
select * from Customer;
select Top 3 with TIES
first_name,last_name,Age
from Customer
order by 
Age;
