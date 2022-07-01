/**** SQL Create Constraints ****/

/*** SQL NOT NULL Constraint ***/
create database Constraints ;
use Constraints;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

insert into persons(ID,LastName,FirstName) values (1,'Sable','Akshata');
select * from Persons;

insert into persons(ID,FirstName) values (2,'Akshata');
select * from Persons;


/*** SQL UNIQUE Constraint ***/
ALTER TABLE Persons
ADD UNIQUE (ID);

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID);

insert into persons(ID,LastName,FirstName) values (4,'Sable','Akshata');
select * from Persons;

/***************** For Drop UNIQUE ******************/
ALTER TABLE Persons
drop constraint UC_Person;

/**** SQL PRIMARY KEY ****/
ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID);


---DROP a Primary key Constraint

ALTER TABLE Persons
DROP CONSTRAINT PK_Person;

/**** SQL FOREIGN KEY Constraint ****/
CREATE TABLE Orders ( 
    OrderID int NOT NULL primary key,
    OrderNumber int NOT NULL,
    ID int,
    CONSTRAINT FK_Person FOREIGN KEY (ID)
    REFERENCES Persons(ID)
);

/**** SQL CHECK Constraint ****/

Alter table Persons 
Add city varchar(255),
Constraint CHK_Person check (Age>= 18 And city ='MH');

insert into Persons(ID,LastName,FirstName,Age,city) values 
(5,'Panchal','Omkar',24,'MH'),

(6,'Shinde','Punam',12,'MH'),
(7,'Kadam','Supriya',27,'UP');

select * from Persons  

---DROP a CHECK Constraint
alter table persons
drop constraint CHK_Person;

/**** SQL DEFAULT on ALTER TABLE ****/
ALTER TABLE Persons
ADD CONSTRAINT df_City
DEFAULT 'MH' FOR city;

insert into Persons(ID,LastName,FirstName,Age) values 
(8,'More','Amruta',25);


select * from Persons  
---DROP a DEFAULT Constraint
alter table persons
drop constraint df_City;

/**** SQL Server UNIQUE constraint ****/
alter table Persons add email VARCHAR(255);
alter table Persons 
Add CONSTRAINT unique_email UNIQUE(email);

insert into Persons(ID,LastName,FirstName,Age,email) values 
(10,'Jagtap','Rushi',25,'jagtaprushi25@gmail.com'),
(9,'Jagtap','Rushi',25,'jagtaprushi25@gmail.com');
select * from Persons  