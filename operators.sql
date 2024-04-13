# operators
#are the key or symbols used to perform operations on values n exps
#they are fundamental components in sql queries, allowing u to filter, compare n manipuate the data
#arithmatic, comparision, logical, concatenation, like, in , is null, is not null, between.


#-------------------------------------arithmatic ops


create database operators;
use operators;
create table numbers( a int, b int);
insert into numbers (a,b)
values (10,3),(12,40),(23,56);
select a,b, a+b as sum, a-b as diff, a*b as multiplication, a/b as division, a%b as modulus
from numbers;


#-------------------------------------comparision ops


create database store;
use store;
create table stock(
id int auto_increment, item varchar (20) not null, price int, quantity int, primary key (id));
insert into stock(item,price,quantity)
values('rice',42,50),('dal',110,47),('rava',39,68);
select * from stock;
#------------------- eql to op (=)
select * from stock where price = 110;
#------------------- not eql op (<>!=)
select * from stock where price >100;
select * from stock where price <50;
select * from stock where quantity <60;


#-------------------------------------------logical ops


create database college;
use college;
create table student(
id int auto_increment, fname varchar (20), score int, dept varchar(20), primary key (id));
insert into student(fname, score, dept)
values
('ganesh',438,'EEE'),('krishna',248,'ECE'),('shiva',347,'CSE'),('bramha',536,'IT'),('parvathi',236,'ECE'),('sarswathi',626,'EEE'),('varun',272,'CSE'),('laxmi',257,'MECH');
select * from student;

#-------------- and op
select * from student where dept = 'ECE' and score >240;
select * from student where score <300 and dept = 'CSE';

#------------- or op
select * from student where dept = 'EEE' or score >500;
select * from student where dept = 'mech' or score <250;

#------------- not op
select * from student where dept != 'EEE';
select * from student where score != 500;


#-------------------------------------------like op


create table e_product(
id int auto_increment, item_name varchar (30), primary key (id));
insert into e_product (item_name)
values ('mobile phone'),('office laptop'),('mobile charger'),('laptop charger'),('ear phone');
select * from e_product where item_name like '%laptop%';


#---------------------------------------- conacatenation op

create database if not exists movie_life;
use movie_life;
create table movie_name(
id int auto_increment, fname varchar(20), lname varchar(20), release_year int, primary key (id));
insert into movie_name(fname,lname,release_year)
values
('Hi','nanna',2023),('hanu','man',2023),('Dj','tillu',2021);
select * from movie_name;
select id, concat(fname ,' ',lname) as fmovie_name from movie_name;


#---------------------------------------In op


select * from movie_name where release_year in (2023);


#-------------------------------------- null/not null


create table hero_vd(
id int auto_increment, fname varchar(20), lname varchar(20), heroine varchar(20), primary key (id));
insert into hero_vd(fname,lname,heroine)
values
('geeta',null,'rashmika'),('family','star','mrunal'),('dear','comrade',null),(null,'reddy','shalini');
select * from hero_vd where lname is null;
select * from hero_vd where lname is not null;


#------------------------------------ between op


create database business;
use business;
create table product(
id int auto_increment, pname varchar (30), price int, primary key(id));
insert into product(pname,price)
values
('mobile',18000),('laptop',55000),('earphones',400),('charger',600),('scooter',85000),('idcard',500);
select * from product where price between 10000 and 50000;
select * from product where price between 50000 and 100000;