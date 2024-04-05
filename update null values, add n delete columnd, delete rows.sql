create database my_friends;
use my_friends;
create table my_friends_data(
id int auto_increment,
firstname varchar(30),
profession varchar(30),
gender varchar(30),
phone varchar(15),
primary key (id));
insert into my_friends_data(firstname,profession,gender,phone)
values
('aishu','student','f',983689232),
('siddu','working','m',928364236),
('aruna','working','f',293469319),
('adarsh','working','m',973481398),
('supriya','student','f',283760834),
('yashu','student','f',null),
('sharath','working','m',null);
select * from my_friends_data;
update my_friends_data set phone=119489201 where id=6;
update my_friends_data set phone=119489241 where id=7;
select * from my_friends_data;

# how to add any column to the existing table

alter table my_friends_data add institution varchar(20);

# to see new added column with table

select * from my_friends_data;

# update values into the new column
update my_friends_data set institution = 'college' where id=1;
update my_friends_data set institution = 'rattletech' where id=2;
update my_friends_data set institution = 'amazon' where id=3;
update my_friends_data set institution = 'amazon' where id=4;
update my_friends_data set institution = 'college' where id=5;
update my_friends_data set institution = 'college' where id=6;
update my_friends_data set institution = 'amazon' where id=7;

select * from my_friends_data;

# to drop or delete any comlumn from table

alter table my_friends_data drop column gender;

# to delete any row from the table

delete from my_friends_data where id=4;

select * from my_friends_data;