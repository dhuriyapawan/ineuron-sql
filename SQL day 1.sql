#---Commad to create a database
create DATABASE iNeuron_sql_bootcamp;
#---To list down all the database
show databases;
#-----to delet a database--
Drop Database book_shop;
#--- To go inside a particular databasae
use iNeuron_sql_bootcamp;
#---command to create a table
create table if not exists employee(
id int,
name varchar(50)
);
drop table employee;
#--command to show table
show create table employee;
#--command to create a table
create table  if not exists employee(
id int,
name varchar(50),
salary double,
hiring_date Date
);
#---syntax 1 to insert a table
insert into employee values(1,'shan',1000,'2021-09-09');
#----failed syntx 
insert into employee values(2,'rahul','2022-05-04');#---as vlaues in table is not mathcing values into insert
#----syntax 2 to insert values
insert into employee (salary,name,id) values(1200,'rahul','2');
--- Insert multiple rows using single insert statement
insert into employee values(3,'Amit',3000,'2021-09-15'),(4,'Niting',3500,'2021-09-16'),(5,'Kajal',4000,'2021-09-20');
#---select commad to query
select * from employee;

#----


