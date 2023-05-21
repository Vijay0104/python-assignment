create database shk;

create table  shk.Salesperson (Snum int unique, Sname varchar(50), City varchar(50),
 Comm int, primary key(Snum));

insert into  shk.salesperson values (1001, "Peel", "London" ,12),
(1002, "Serres", "Sanjose",13),
(1004, "Motika", "London", 11),
(1007, "Rifkin", "Barcelona", 15),
(1003, "Axelrod", "Newyork", 10);



create table shk.customers (Cnum int,
Cname varchar(50), 
City varchar(50) not null,
primary key(Cnum), 
foreign key(Snum)
references salesperson(Snum),
Snum int);


insert into  shk.customers values (2001, "Hoffman", "London", 1001),
(2002,  "Giovanni", "Rome", 1003),
(2003, "Liu", "Sanjose", 1002),
(2004, "Grass", "Berlin", 1002),
(2006, "Clemens", "London", 1001),
(2008, "Cisneros", "Sanjose", 1007),
(2007 ,"Pereira", "Rome", 1004);


create table  shk.orders (Onum int,primary key(Onum),
Amt float, Odate varchar(50), Cnum int, 
foreign key(Cnum)
references customers(Cnum),
foreign key(Snum)
references salesperson(Snum),
Snum int);


insert into  shk.orders values (3001, 18.69, "3-10-1990", 2008, 1007),
(3003, 767.19 ,"3-10-1990", 2001, 1001),
(3002, 1900.10, "3-10-1990", 2007, 1004),
(3005, 5160.45, "3-10-1990" ,2003, 1002),
(3006, 1098.16, "3-10-1990" ,2008, 1007),
(3009, 1713.23, "4-10-1990", 2002, 1003),
(3007, 75.75 ,  "4-10-1990", 2004, 1002),
(3008, 4273.00, "5-10-1990", 2006, 1001),
(3010, 1309.95, "6-10-1990", 2004, 1002),
(3011, 9891.88, "6-10-1990", 2006, 1001);





SELECT COUNT(Sname) FROM salesperson WHERE Sname like "a%";
select * from  shk.orders where Amt >= 2000;
select COUNT(city) from salesperson where city = "newyork";
select * from  shk.salesperson where city in ("london" ,"paris");
select Onum, Odate from shk.orders;