# create a tables one employee. take 5 entry for both use sql command  
# only like create, isert,alter,delete,update,truncate,drop.
USE souravdb;
# create table
create table Department (
emp_id int(3) primary key not null,
fname varchar(30),
lname varchar(30),
dept varchar(20),
floar int (3),
cabin varchar(3)
);
# insert
insert into Department VALUES
(101,'AVISHEK','MAITY','IT',5,'5A'),
(102,'SOUMYA','CHATTERJEE','IT',4,'4C'),
(103,'NILADRI','CHOWDHURY','EE',2,'2B'),
(104,'SOUMIK','NANDI','IT',5,'5D'),
(105,'SOURAV','DAS','ME',3,'3C');
# alter
ALTER TABLE Department ADD column designation varchar(20);
select * from Department;
# update
update Department set designation = 'Developer' where emp_id = 101; 
update Department set designation = 'Developer' where emp_id = 105; 
update Department set designation = 'Manager' where emp_id = 102;
update Department set designation = 'Senior Developer' where emp_id = 103;  
update Department set designation = 'Senior Developer' where emp_id = 104; 
select * from Department;
 # delete
 delete from Department where dept='EE';
 # drop
 alter table Department drop column floar; 
 # truncate
 truncate table Department;
 