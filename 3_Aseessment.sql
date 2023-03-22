create database Ass;

use Ass;

create table country
(
country_id int auto_increment,
country_Name varchar(50),
country_Name_eng varchar(50),
country_code varchar(10),
primary key(country_id)
);

create table city
(
city_id int auto_increment,
city_Name varchar(50),
Lat int,
city_long int,
country_id int,
primary key(city_id),
foreign key(country_id) references country(country_id)
);

create table customer
(
custmor_id int auto_increment,
custmor_Name varchar(50),
city_id int,
custmor_address varchar(50),
Next_call_date date,
ts_inserted datetime,
primary key(custmor_id),
foreign key(city_id) references city(city_id)
);

insert into country(country_Name,country_Name_eng,country_code)
values
("Deutschland","Germany","DEU"),
("Srbija","Serbia","SRB"),
("Hrvatska","Croatia","HRV"),
("United States of America","United States of America","USA"),
("Polska","Poland","POL"),
("Espana","Spain","ESP"),
("Rossiya","Russia","RUS");

insert into city(city_Name,Lat,City_long,Country_id)
values
("Berlin",52.520008,13.404954,1),
("Belgrade",44.787197,20.457273,2),
("Zagreb",45.815399,15.966568,3),
("New York",40.730610,-73.935242,4),
("Los Angeles",34.052235,-118.242683,4),
("Waesaw",52.237049,21.017532,5);

insert into customer(custmor_Name,city_id,custmor_address,Next_call_date,ts_inserted)
values
("Jewelry Store",4,"Long Street 120",'2020-01-21','2020-01-09 14:01:20.000'),
("Bakery",1,"Kurfurstendamm 25",'2020-02-21','2020-01-09 17:52:15.000'),
("Cafe",1,"Tauentzienstrabe 44",'2020-01-21','2020-01-10 08:02:49.000'),
("Restaurant",3,"Ulica lipa 15",'2020-01-21','2020-01-10 09:20:21.000');


-- Task : 1 (join multiple tables using left join)
-- List all Countries and customers related to these countries.
-- For each country displaying its name in English, the name of the city customer is located in as well as the name of the customer.
-- Return even countries without related cities and customers.
select 
customer.*,country.*
from customer 
left join city 
on city.city_id=customer.city_id 
left join country 
on city.country_id=country.country_id;

-- Task : 2 (join multiple tables using both left and inner join)
-- Return the list of all countries that have pairs(exclude countries which are not referenced by any city). For such pairs return all customers.
-- Return even pairs of not having a single customer.
select
city.*,country.*
from city
left join country
on country.country_id=city.country_id