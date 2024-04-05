create database animals;
use animals;
create table details(
animal_name varchar(10),
count int,
state varchar (10));
insert into details(animal_name,count,state)
values('dog',912390,'telangana'),('cat',283481301,'kerala'),('cow',9329734,'karnataka');
select * from details;

create database dog;
use dog;
create table details(
state varchar(20),
breed varchar(10),
count int);
insert into details(state,breed,count)
values ('telangana','labrador',82422),('andrapradesh','indian',226491371),('karnataka','indian',3415345);
select * from details;

create database movies;use movies;create table details(hero varchar(20),heroine varchar(20),songs int);
insert into details(hero,heroine,songs)
values('nani','mrunal',6),('mahesh babu','sreeleela',6),('siddu','anupama',5);
select * from details;