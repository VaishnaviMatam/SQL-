# not null, unique, primary key, foreign key, default, check - 6 contraints
# constraints are used to limit the type of data that can be entered into the table.
/*
What is SQL Contraints?
- SQL constraints are used to specify rules for the data in a table.
- Constraints are used to limit the type of data that can go into a table.

1) Not Null - A column cannot have a NULL value
2) Unique - All values in a column are different
3) Primary Key - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
4) Foreign Key - Prevents actions that would destroy links between tables
5) Default - Sets a default value for a column if no value is specified
6) Check - the values in a column satisfies a specific condition
7) Index - Used to create and retrieve data from the database very quickly

*/

create database person;
use person;
create table person_info(
id int not null, first_name varchar (25) not null, last_name varchar(35) not null, age int);
select * from person_info;
desc person_info;

#-------------------not null

insert into person_info(id,first_name,last_name,age)
values(1,'matam' ,null, 28),(2,'arnav','nandan', 4),(3,null,'aishu',28);
alter table person_info modify age int not null;
alter table person_info modify age int;
desc person_info;
# we are getting errors as first name and last name should not be null

#--------------------unique
create table student( 
id int not null, first_name varchar(25), last_name varchar(25), age int not null, unique(id));
insert into student values (1,'vaishu','matam',28),  (1,'radha', 'krishna',100);
select * from student;
#we get error here bcz id is not unique
desc student;

####-----make a unique for another column

alter table student
add constraint uqi_student unique (age, first_name);
show tables;
select * from student;

#to drop a constraint

alter table student
drop index uqi_student;

###--------------------------primary key constraint###

create table student2(
id int not null, fname varchar (25) not null, lname varchar(25), age int, primary key (id));
desc student2;
alter table student2 drop primary key;
desc student2;

# foreign key - it is used to link 2 tables together and it is sometimes known as reference key

use person;
create table student5(
id int not null,
first_name varchar(34) not null,
last_name varchar(23) not null,
age int not null,
salary int,
primary key(id)
);

desc student5;

#creating another table

create table department(
id int not null,
department_id int not null,
department_name varchar(35),
primary key(department_id),
constraint fk_studentdepart foreign key(id) references student5(id)
);
desc department;
select * from student5;

###------------------------------check ###

create table student3(
id int not null, 
fname varchar(20), 
lname varchar(20),
 age int not null,
 salary int, 
 primary key (id), 
 check(salary<50000));
 
insert into student3 values (1,'vaishu','matam',28,31500);
insert into student3 values (2,'aruna','tangella',33,32000);
insert into student3 values (3,'gaurav','kaushik',29,119000);
 select * from student3;
 
###----------------------------------------default ###

create table student4(
id int not null,
fname varchar (20) not null,
lname varchar(20) not null,
location varchar (20) default 'hyderabad');
desc student4;
insert into student4(id,fname,lname)
values
(1,'vaishu','matam'),(2,'aruna','tangella'),(3,'adarsh','prakash');
select * from student4;
 
 

