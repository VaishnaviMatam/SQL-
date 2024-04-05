create database vaishnavi;
use vaishnavi;
create table vaishnavi_details(
education varchar(20),
score int,
year_of_pass int);
show tables;
insert into vaishnavi_details(education,score,year_of_pass)
values("intermediate",95,2012),
("b.tech",77,2016),
("m.tech",8,2019);
select * from vaishnavi_details;




