 /* ****************************************************** Assignment 3 ***************************************************************'**
*************************************1 point for each correct answer. Maximum of 14 points *******************************************************
*************************************Please submit the sql file. The file name should be Taha-Yassine_ENNABILI Assign3.sql ****************************
You will be using the classismodels database. 
*/
# 1. Increase the creditLimit for customers by 20% if their current credit limit is greater than 50000 in the table customers. 
update customers set creditlimit = creditlimit + (0.2*creditlimit) where creditlimit >50000 ;
select*from customers;

# 2. Change the email id for Murphy Diane to  murphy.diane@microsoft.fi (employees table).
update employees set email= "murphy.diane@microsoft.fi" where employeeNumber= "1002"; 
select*from employees;

# 3. Change the office code 1 to 00990 for all employees with office code 1  (employees table). 
alter table employees 
drop foreign key employees_ibfk_2;
update employees set officeCode="00990" where officeCode = "1";
select*from employees;

# 4. Create a table called 'grades' with columns (sid as primary key and autoincrement, courseName,  firstname, lastname, email >>unique, and grade. 
create table grades(
sid INT AUTO_INCREMENT PRIMARY KEY,
courseName varchar(50) not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
email varchar(50) not null unique, 
grade int not null
);
select*from grades;

#5. Create a new table called 'newgrades' with columns as in no.4 . Make the primary key as a combination of sid and courseName. 
create table newgrades (
sid INT AUTO_INCREMENT PRIMARY KEY,
courseName varchar(50) not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
email varchar(50) not null unique
);
alter table newgrades
add constraint PK_newgrades primary key (sid,courseName);
select*from newgrades;

#6.  Demonstrate the concept of foreign key constraints by creating two tables. 
create table studentsinfo (
studentid INT AUTO_INCREMENT PRIMARY KEY, 
fullname varchar(50) not null 
);

create table grades(
courseid INT AUTO_INCREMENT PRIMARY KEY, 
studentid int,
constraint fk_id 
foreign key (studentid) references studentsinfo(studentid),
grade int
);


#7. From the employees table, delete employees with the employee number that is less than 1100. 
delete from employees where employeeNumber < 1100;
select * from employees;

#8.  Create a table named book_rec by running the following sql script 
#Done.

CREATE TABLE book_rec (
  book_id varchar(15) NOT NULL DEFAULT '',
  book_name varchar(50) NOT NULL DEFAULT '',
  isbn_no varchar(15) NOT NULL DEFAULT '',
  cate_id varchar(8) NOT NULL DEFAULT '',
  aut_id varchar(8) NOT NULL DEFAULT '',
  pub_id varchar(8) NOT NULL DEFAULT '',
  dt_of_pub date NOT NULL DEFAULT '0000-00-00',
  pub_lang varchar(15) DEFAULT NULL,
  no_page decimal(5,0) NOT NULL DEFAULT '0',
  book_price decimal(8,2) NOT NULL DEFAULT '0.00'
);
select*from book_rec;

#9.  Add column id to the table book_rec
alter table book_rec
add id INT AUTO_INCREMENT PRIMARY KEY;
select*from book_rec;

/*10.   Insert Column FIRST: Use table ‘book_rec’. Delete the column ‘id’. 
 Insert a column ‘id’ of integer type as first column of the table ‘book_rec’. 
 (Check the structure of the table using ‘DESCRIBE’ . 
 Note id becomes the first column) 
 */
alter table book_rec 
drop id;
alter table book_rec
add id integer first;
describe book_rec;
 
 /*11.  Insert a column AFTER the specific column. Use table ‘book_rec’. 
 To add columns c1 and c2 after id and aut_id columns respectively. 
 Check the structure of the table using ‘DESCRIBE’. */
alter table book_rec 
add c1 integer after id;
alter table book_rec 
add c2 integer after aut_id;
describe book_rec;
 
#12 Add an index named cate_id on cate_id column for the table ‘book_rec’. 
create index cate_id on book_rec (cate_id);

#13 Add an UNIQUE INDEX named pub_id on pub_id column for the table ‘book_rec’
create unique index pub_id on book_rec (pub_id);

#14 Drop the pub_id unique index.  
alter table book_rec drop index pub_id;