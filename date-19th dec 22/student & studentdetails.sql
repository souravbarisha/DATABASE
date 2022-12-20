USE souravdb;
create table Student (id int primary key auto_increment, sname varchar(20) not null, sphone bigint(11) not null unique,
semail varchar(30) not null unique,sadd varchar(50),squalification varchar(10) not null,sdept varchar(20));
insert into Student values
(1,'Nisha',8927974283,'nisha267@gmail.com','Asansol','BSC','Computer science'),
(2,'Ankita',8346789883,'anki67@gmail.com','Asansol','MCA','Computer science'),
(3,'Sayan',6757974283,'sayan456@gmail.com','Raniganj','Btech','Computer science'),
(4,'Baisali',786956785,'baisali267@gmail.com','Asansol','BSC','PHYSICS'),
(5,'Raj',7867987659,'raja267@gmail.com','Durgapur','MCA','Computer science');
#add new column
alter table Student ADD age int after sname;
#modify datatype size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraint
#table Student MODIFY sphone int not null;
#drop column
alter table Student drop column sdept;
#change column name
alter table Student change column age sage int;
#rename table name
alter table Student rename to studentdetails;
#insert single row
insert into studentdetails values
(10,'pallabi',27,7865777456,'pallabi@gmail.com','Kolkata','MSC');
#truncate student_details;#delete rows
#drop table student_details;#delete whole table
update studentdetails set sage=20 where id=1;
update studentdetails set sage=22 where id=2;
update studentdetails set sage=26 where id=3;
update studentdetails set sage=28 where id=4;
update studentdetails set sage=25 where id=5;
update studentdetails set sage=30 where id=10;
alter table studentdetails add fees double after squalification;
update studentdetails set fees=3000.60 where id=1;
update studentdetails set fees=3000.60 where id=2;
update studentdetails set fees=3000.60 where id=3;
update studentdetails set fees=3000.60 where id=4;
update studentdetails set fees=3000.60 where id=5;
update studentdetails set fees=3000.60 where id=10;
update studentdetails set squalification='BCA' where sname='Baisali';

delete from studentdetails where sname='pallabi';

alter table studentdetails drop column fees;