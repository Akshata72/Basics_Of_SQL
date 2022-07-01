/***** SQL Server Data Types *****/


/**** Numeric data types ****/

/*** 1)BIT data type ***/
create database Data_Types;
use Data_Types;
create table DataType(bit_col bit);
insert into DataType(bit_col) output inserted.bit_col values(1);
insert into DataType(bit_col) output inserted.bit_col values(0);
insert into DataType(bit_col) output inserted.bit_col values('true');
insert into DataType(bit_col) output inserted.bit_col values('false');
insert into DataType(bit_col) output inserted.bit_col values(0.5);

/*** 2)Integers data type ***/
alter table DataType add bigint_col bigint,
	int_col INT,
	smallint_col SMALLINT,
	tinyint_col tinyint;

INSERT INTO DataType(bigint_col,int_col,smallint_col,tinyint_col)
VALUES
	(9223372036854775807,
	 2147483647,
     32767,
	 255
	);

	SELECT bigint_col,int_col,smallint_col,tinyint_col FROM DataType;

/*** 3)Decimal data type ***/
alter table DataType add  dec_col DECIMAL (4, 2),
    num_col NUMERIC (4, 2);
	insert into DataType(dec_col,num_col) values(10.25,20.05);
	select dec_col,num_col from DataType;
	
	insert into DataType(dec_col,num_col) values(99.999,20.705);
	select dec_col,num_col from DataType;

/**** Character strings data types ****/

/*** 1)CHAR data type ***/
alter table DataType add  val CHAR(3);

insert into DataType (val) values ('ABC');
insert into DataType (val) values ('XYZ');
insert into DataType (val) values ('A');
select val, Len(val) len from datatype;

/*** 2)VARCHAR data type ***/
alter table datatype add val_varchar varchar(10);
alter table datatype add val_varcharmax varchar(max);

insert into datatype(val_varchar) values('SQL Server');
insert into datatype(val_varcharmax) values('SQL Server Varcharacter');

insert into datatype(val_varchar) values('SQL Server var character');

select val_varchar,val_varcharmax from DataType;

/**** Date & Time data types ****/

/*** 1)Date data type ***/
alter table datatype add valid_date Date

insert into datatype (valid_date) values ('2022-06-30');
select valid_date from datatype;

/*** 2)Time data type ***/
alter table datatype add valid_time Time

insert into datatype (valid_time) values ('06:18:00');
select valid_time from datatype;

/*** 3) DateTime data type ***/
alter table datatype add valid_datetime DateTime

insert into datatype (valid_datetime) values ('2022-06-30 06:18:00');
select valid_datetime from datatype;

-- Creating a table using NEWID for uniqueidentifier data type. 
CREATE table  Customer(
Customer_id uniqueidentifier NOT NULL
DEFAULT newid(),
Customer_Name varchar(60) NOT NULL);

insert into Customer(Customer_Name) values ('Omkar'),('Akshata'),('Suraj'); 

select * from Customer;

