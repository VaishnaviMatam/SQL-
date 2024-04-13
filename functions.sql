#------------FUNCTIONS
#- Aggregate fn, string fn, scalar fn, numeric fn

create database functions;
use functions;

#------------------------------------------------------aggregate fn
# sql agg fn are used to perform calculations on set of values. These operate on multiple rows of data and returns a single value.

create table sales(
id int auto_increment, pname varchar (20), date_sale date, price int, quantity int, primary key (id));
insert into sales (pname,date_sale, price, quantity)
values
('rice', '2019-12-12', 60, 100),('dal','2019-12-12', 110,128),('sugar','1999-12-12', 41, 150),('jaggery','2020-12-12',60,100);
select count(*) from sales as total_sales;
#counts total num of rows in the table

select sum(quantity) as total_quantity from sales;
#sums up the defined coulumn values

select sum(price*quantity) as total_revenue from sales;

select avg(price) as avg_price from sales;
#averages the defined column

select min(price) as min_price from sales;
select max(quantity) as max_quantity from sales;
#gives max n min fromt he defined column or category

SELECT pname, SUM(quantity) FROM sales GROUP BY pname;
#gives the selected columns, here pname and its quantity

SELECT pname, SUM(quantity) as total_quantity FROM sales GROUP BY pname having total_quantity>100;
#group by applied with some condition


#-----------------------------------------string fun


#this allows to perform queries on characteristics of string functions

create table customer(
id int auto_increment, fname varchar(20), lname varchar (30), cus_email varchar(50), bill int, primary key (id));
insert into customer(fname,lname,cus_email,bill)
values
('vaishu','matam','vaishu.18@gmail.com', 25000),('aishu','matam','aishu.24@gmail.com',23900),('yashu','matam','yashu.05@gmail.com',24890);

#concat
select concat(fname,' ',lname) as fullname from customer;

#length
select length(concat(fname,' ',lname)) as name_length from customer;

#upper and lower
select upper(fname) as firstname from customer;
select lower(fname) as firstname from customer;

#trim - removes leading and ending spaces
SELECT cus_email, TRIM(cus_email) AS trimmed_email FROM customer;

#replace - replaces any substring from the given string
select cus_email, replace(cus_email, '@gmail.com','@yahoo.com') as new_email from customer;

