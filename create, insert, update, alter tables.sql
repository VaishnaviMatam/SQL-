create database customer;
use customer;
create table customer_info(
id int auto_increment,
first_name varchar(30),
last_name varchar(30),
salary int,
primary key(id));
show tables;
select * from customer_info;
insert into customer_info(first_name,last_name,salary)
values
('Vaishnavi','matam',31800),
('Aruna','Tangella',31000),
('Adarsh','prakash',31500),
('Sharath','Manda', Null);
select * from customer_info;
select * from customer_info where salary is null;
#update st is used to replace the null values
update customer_info set salary=31850 where id=4;
update customer_info set salary = 31850 where id=8;
select * from customer_info;
-- delete st used to delete data
delete from customer_info where id=1;
select * from customer_info;
delete from customer_info where id=2;
delete from customer_info where id=3;
delete from customer_info where id=4;
select * from customer_info;
# alter table main
# add the column using alter to existing table
alter table customer_info add phonenumber int;
select * from customer_info;
alter table customer_info add dob date;
select * from customer_info;
#to view schema
desc customer_info;
# drop column using alter
alter table customer_info drop column dob;alter table customer_info drop column phonenumber;
select * from customer_info;
