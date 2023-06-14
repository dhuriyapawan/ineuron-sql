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
#---select commad to query the data
select * from employee;
#---- Example for intergrity constraints
Create table if not exists employee_with_constraints
(
    id int NOT NULL,
    name VARCHAR(50) NOT NULL,
    salary DOUBLE,
    hiring_date DATE DEFAULT '2021-01-01',
    UNIQUE (id),
    CHECK (salary > 1000)
);

--- Example 1 for Integrity Constraint failure
--- Exception will be thrown -> Column 'id' cannot be null
insert into employee_with_constraints values(null,'Amit',3000,'2021-09-15');

--- Example 2 for Integrity Constraint failure
--- Exception will be thrown -> Column 'name' cannot be null
insert into employee_with_constraints values(3,null,3000,'2021-09-15');


--- Example 3 for Integrity Constraint failure
--- Exception will be thrown -> Check constraint 'employee_with_constraints_chk_1' is violated.
insert into employee_with_constraints values(1,'Shashank',500,'2021-09-15');

---
--- Example 4 for Integrity Constraint failure
--- Exception will be thrown -> Duplicate entry '1' for key 'employee_with_constraints.id'
insert into employee_with_constraints values(1,'Amit',1300,'2021-09-28');	Error Code: 1062. Duplicate entry '1' for key 'id'	0.016 sec


--- Example 5 for Integrity Constraint
insert into employee_with_constraints values(2,'Amit',1300,null);
insert into employee_with_constraints(id,name,salary) values(3,'Mukesh',2400);

select * from employee_with_constraints;

#---Add alias name for constraints
create table if not exists employee_with_constraints_tmp
(
id int   NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
salary DOUBLE,
hirin_date DATE DEFAULT '2021-01-01',
CONSTRAINT unique_id UNIQUE (id),
CONSTRAINT salary_check CHECK (salary>1000)

);
show tables ;

--- Example for Integrity Constraint failure with alias name of constraint
--- Exception will be thrown -> Check constraint 'salary_check' is violated.
insert into employee_with_constraints_tmp values(2,'Shashank',500,'2021-09-15');

select * from employee_with_constraints_tmp;














