 create database class2_db;
 use class2_db;
 
 create table if not exists employee(
 id int ,
 name varchar(50),
 address varchar(50),
 city VARCHAR(50)
 );
 INSERT into employee values(1,'shashank','RJPM','Lucknow');
 select * from employee;	 
 
 --- add new column named DOB in the TABLE
 alter table employee add DOB date;
 
 --- modify existing column in a TABLE or change datatype of name column or increase lenght of name column
alter table employee modify column name varchar(100);

-- delete existing column from given TABLE or remove perticular column(city) from table
alter table employee drop column city; 

   --- add city to table 
 alter table employee add city varchar(50);
 
 --- rename the column name to full_name
--  alter table employee change column  name   full_name;problem with code as change is not support in this versoin 

create table if not exists employee_new(
id int NOT null ,
name varchar(50),
age int,
hiring_date DATE,
salary int,
city varchar(50)
); 

select * from  employee_new;
 insert into employee_new  values(1,'Shashank', 24, '2021-08-10', 10000, 'Lucknow');

insert into employee_new values(2,'Rahul', 25, '2021-08-10', 20000, 'Khajuraho');

insert into employee_new values(3,'Sunny', 22, '2021-08-11', 11000, 'Banaglore');

insert into employee_new values(5,'Amit', 25, '2021-08-11', 12000, 'Noida');

insert into employee_new values(6,'Puneet', 26, '2021-08-12', 50000, 'Gurgaon');
-- add unique constraint id 
alter table employee_new	add  constraint id_unique unique(id);
 
