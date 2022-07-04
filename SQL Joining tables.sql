Create database Collage;
CREATE SCHEMA  Collage;
Go
Create Table Collage.Student(
Student_Id int Not NUll,
first_name varchar(255) Not Null,
last_name varchar(255) NOt NULL,
Cource_name varchar(255) Not NULL);

insert into Collage.Student(Student_Id,first_name,last_name,Cource_name) values(
     1,'Thrisha','Singh','Mech Eng'),
	 (2,'Ketki','Kulkarni','Mech Eng'),
	 (1,'John','Doe','Ele Eng'),
    (2,'Lily','Bush','Ele Eng'),
    (3,'Peter','Drucker','Ele Eng'),
    (3,'Jane','Doe','Mech Eng'),
	(4,'Michael','Scott','CO Eng'),
    (5,'Jack','Sparrow','IT Eng');


Create Table Collage.FeeSheet(
Recipe_no int identity(1,1) Not Null,
Total_fee bigint Not Null,
Recived_fee bigint,
Remaing_fee bigint Not Null,
Student_Id int Not NUll ,
Cource_name varchar(255) Not NULL);

drop table Collage.Student;

insert into Collage.FeeSheet(Total_fee,Recived_fee,Remaing_fee,Student_Id,Cource_name) Values 
(25000,10000,15000,4,'CO Eng'),
(30000,5000,25000,1,'Mech Eng'),
(30000,10000,20000,2,'Mech Eng'),
(30000,15000,15000,3,'Mech Eng'),
(25000,10000,15000,1,'Ele Eng'),
(25000,15000,10000,2,'Ele Eng'),
(25000,10000,15000,3,'Ele Eng'),
(25000,10000,15000,1,'CO Eng'),
(25000,10000,15000,2,'IT Eng');

/*************SQL Server Inner Join**************/

SELECT first_name,last_name,s.Student_Id,s.Cource_name,f.Recived_fee
   FROM
    Collage.Student s
INNER JOIN Collage.FeeSheet f
    ON s.Student_Id = f.Student_Id AND s.Cource_name = f.Cource_name
ORDER BY
    first_name,last_name;

SELECT first_name,last_name,f.Student_Id,f.Cource_name,Recived_fee
   FROM
    Collage.Student s
JOIN Collage.FeeSheet f
    ON s.Student_Id = f.Student_Id AND s.Cource_name = f.Cource_name

/************SQL Server Left Join****************/
select * from Collage.Student;
select * from Collage.FeeSheet;
SELECT first_name,last_name,s.Student_Id,s.Cource_name,Recived_fee
   FROM
    Collage.Student s
Left JOIN Collage.FeeSheet f
    ON s.Student_Id = f.Student_Id AND s.Cource_name = f.Cource_name
ORDER BY
    first_name,last_name;


/***********SQL Server Right Join**************/
select * from Collage.Student;
select * from Collage.FeeSheet;
SELECT first_name,last_name,f.Student_Id,f.Cource_name,Recived_fee
   FROM
    Collage.Student s
Right JOIN Collage.FeeSheet f
    ON s.Student_Id = f.Student_Id AND s.Cource_name = f.Cource_name

/************SQL Server full join****************/
select * from Collage.Student;
select * from Collage.FeeSheet;
SELECT first_name,last_name,f.Student_Id,f.Cource_name,Recived_fee
   FROM
    Collage.Student s
Full JOIN Collage.FeeSheet f
    ON s.Student_Id = f.Student_Id AND s.Cource_name = f.Cource_name


	SELECT first_name,last_name,s.Student_Id,s.Cource_name,Recived_fee
   FROM
    Collage.Student s
Cross JOIN Collage.FeeSheet f
  


