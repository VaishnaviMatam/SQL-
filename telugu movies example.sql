# creating databse
create database Telugu_Movies;
#use database
use Telugu_movies;
#create a table in the used database
create table nani(
id int auto_increment, 
movie_name varchar(20), 
heroine varchar(20),
release_year int, 
result varchar(5), 
budget varchar(10),
primary key (id));
# insert values into table 
insert into nani(movie_name,heroine,release_year,result,budget)
values
('Hi nanna','mrunal',2023,'BBhit','50Cr'),
('PJ','sindhu','2016','BBhit','18Cr'),
('Jersey','shraddha',2020,'BBhit','30Cr'),
(null,'samantha',2013,'Flop','16Cr'),
('Ala modalaina','nithya menon','2014','Hit','13Cr'),
('ninu kori',null,2016,'S.hit','58Cr'),
('Devadasu','rashmika',2018,'S.hit',null),
('nenu local','keerthi',null,'S.hit','37Cr'),
('MCA','sai pallavi',2019,null,'30Cr'),
('Eega','samantha',2012,'BBhit','50Cr');
# to show the table with values
select * from nani;
update nani set movie_name = 'yetovelipoyndimansu' where id = 4;
update nani set heroine = 'nivedha' where id = 6;
update nani set budget = '45Cr' where id = 7;
update nani set release_year = 2019 where id = 8;
update nani set result = 'Avg' where id = 9;
select * from nani;
