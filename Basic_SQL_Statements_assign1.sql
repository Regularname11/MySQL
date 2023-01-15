/*
****************************************************** Assignment 1 ***************************************************************'**
*/
#1. Write SQL statement to display the version of your currently installed MySQL Database Server
SELECT version();

#2. Write SQL statement to display the list of databases. 
show databases;

#3. Write SQL statement to display lastName, firstname and email from the employees table. use classicmodels database
use classicmodels;
select lastName, firstName, email from employees;

#4. Write SQL statement to get unique country from customers table. 
use classicmodels;
select * from customers where country="Germany";
select distinct country from customers;
#I wrote them both because the question is a little bit tricky.

#5. Create a database named firstname_lastname.
create database firstname_lastname;

#6. Create a database named mydb11.
create database mydb11;

#7. Remove the database mydb11.
drop database mydb11;

/* 8. Create a table named persons with columns:
 P_ID, Last_NAme, First_Name, Address, City. 
 Make the P_ID as primary key. */
create table persons
(
P_ID INT auto_increment primary KEY,
Last_NAme VARCHAR(20) not null,
First_Name VARCHAR(20) not null, 
Address VARCHAR(20) not null,
City VARCHAR(20),
created_at timestamp default current_timestamp
);

#9 Copy the structure of the employees table into employees1
use classicmodels;
create table employees1 like employees;

#10 Open the bookinfo.sql file and run the entire sql file to create database named bookinfo with tables and data. 
#I opened the bookinfo.sql by clicking on file/ Open sql model. and then I run it.

#11 Insert 5 records into the author table. 
use bookinfo;
insert into author (aut_id, country, home_city) values
("AUT0125","Finland" ,"Hameenlinaa"),
("AUT0126","Finland" ,"Helsinki"),
("AUT0127","Finland" ,"Kajaani"),
("AUT0128","Finland" ,"Riihimaki"),
("AUT0129","Finland" ,"Oulou"),
("AUT0200","Finland" ,"Turku");

#12 Create a temporary table name temp11 that includes authors from UK (aut_name, home_city & country)
use bookinfo;
create temporary table temp11 select* from author
where country = "UK";
select* from temp11;


