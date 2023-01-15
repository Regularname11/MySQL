/* ****************************************************** Assignment 2 ***************************************************************'**
*/

#1. Create a copy of the table author as author_cp
create table author_cp like author;
insert into author_cp select * from author;  

#2. Rename the table author_cp to author1
alter table author_cp rename author1;

#3. Add a column 'email' after home_city to the table author1. 
alter table author1
add email varchar(60) after home_city;

#4. Change the data type of the column aut_id to varchar(20) in the table author1. 
alter table author1
modify aut_id varchar(20); 

#5. Change the name of the column aut_name to authorName in the table author1. 
alter table author1
change aut_name authorName varchar(50);
describe author1;

/*6 Create a table named studentsinfo that has columns as studentid, fname,
 lname, groupid,email, country and createdon ´(time when the record was inserted). Make the studentid as primary key. 
*/
create table studentsinfo(
studentid INT AUTO_INCREMENT PRIMARY KEY,
fName varchar(30) NOT null,
lName varchar(30) not null,
groupid int,
email varchar(50) not null, 
country varchar(30) not null,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

#7. Drop the column home_city from the table author1. 
alter table author1
drop home_city;

#8. Insert 5 random records into the table studentsinfo with one insert into sql statement. 
insert into studentsinfo(studentid, fName, lName, groupid, email, country)values
("14885", "Lee", "Wong", "CA25", "leewang@gmail.com", "China"),
("58884", "Taha", "Yass", "CA24", "tahayass@gmail.com", "Morocco"),
("48654", "Alejandro", "Daniel", "CA24", "alejdan@gmail.com", "Italy"),
("84655", "katja", "vilainene", "CA35", "katya123@gmail.com", "Finland"),
("18433", "Ahmed", "Haitham", "CA35", "haitham11@gmail.com", "Qatar");
select*from studentsinfo;

#9. Create a table named birthday_records with columns id, fullname, birthdate, city, region and country. 
create table birthday_records(
id INT AUTO_INCREMENT PRIMARY KEY,
fullName varchar(50) NOT null,
birthday date not null, 
city varchar(50) not null,
region varchar(50) not null,
country varchar(50) not null,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

#10. Insert 5 random records into the table birthday_records. 
insert into  birthday_records(fullName, birthday, city, region, country)values
("Jack Lee", "1998-03-10", "Hong-kong", "lowong", "China"),
("Paula Innen", "1996-08-25", "Hameenlinna", "Kanta-hame", "Finland"),
("John draxler", "2000-07-23", "Orlando", "Florida", "USA"),
("Ching lee", "1997-11-05", "hong-kong", "wunda", "China"),
("Emma visderold", "1999-07-11", "Los angeles", "California", "USA");
select*from birthday_records;
