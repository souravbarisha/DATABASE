USE souravdb;

create table student_details (
 id int primary key,
 sname varchar(20) not null,
 sphone bigint(11) not null unique,
 semail varchar(30) not null unique, 
 sadd varchar(50), 
 squalification varchar(30) not null, 
 sdept varchar(20));
insert into student_details values # insert the value
(1,'RANOJAY', 8035446664,'ran@gmail.com','chennai','CSS','IT'),
(2,'SOUMYABRATA', 9035446664,'soumya@gmail.com','bardhaman','BCA','IT'),
(3,'NILADRI', 8085446677,'nil@gmail.com','kolkata','B.TCH','ELECTRONICS'),
(4,'ATIF', 8035446893,'atif@gmail.com','shilong','BCA','MECHANICAL'),
(5,'AVISHEK', 8035006655,'avi@gmail.com','howrha','MCA','IT'),
(6,'NISHA', 7035336664,'nisha@gmail.com','durgapur','BCA','IT'),
(7,'SOUMIK', 9535446689,'soumik@gmail.com','haldia','B.TECH','CIVIL'),
(8,'BARSHA', 7835448864,'barsha@gmail.com','kolkata','BCA','IT'),
(9,'PESO', 6535445438,'peso@gmail.com','shilong','BCA','ELECTRICAL'),
(10,'SOURAV', 8759533326,'sourav@gmail.com','kharagpur','B.TECH','MECHANICAL');
# SELECT * FROM student_details;  FOR DISPLAY THE TABLE
# add new column
alter table student_details add column age int after sname;
# modify data type size
 alter table student_details modify squalification varchar(20) not null;
 # modify constraint
# alter table student_details modify sphone int not null;
 #drop column
# alter table student_details drop column sdept;
# change column name
# alter table student_details change column age sage int;
# Rename column name #alter table student_details rename to student_data;
# truncate student_details; # delete rows
# drop table student_details;    for delete whole the table 

    # DML ---- INSERT, UPDATE, DELETE
update student_details set sage = 20 where ID = 1;  
update student_details set sage = 23 where ID = 2; 
update student_details set sage = 25 where ID = 3; 
update student_details set sage = 22 where ID = 4; 
update student_details set sage = 26 where ID = 5; 
update student_details set sage = 22 where ID = 6; 
update student_details set sage = 25 where ID = 7; 
update student_details set sage = 27 where ID = 8; 
update student_details set sage = 21 where ID = 9;  
update student_details set sage = 24 where ID = 10; 

alter table student_details add fees double after squalification; 
    update student_details set fees = 1000.50 where ID = 1;