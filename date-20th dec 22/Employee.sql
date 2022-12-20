USE souravdb;
create table Employee(
id int primary key,Ename varchar(20) not null,
Ephone bigint(11) not null unique,
Eaddr varchar(50),Edept varchar(20) not null,
Esalary double);
#insert multiple row
insert into Employee value
(1,'Bishnupriya',4567231490,'Mumbai','IT',20000.5);
insert into Employee value
(2,'Suchitra',7869453210,'Kolkata','IT',20000.5),
(3,'Shifa',876931490,'Pune','A/C',15000.80),
(4,'Nisha',768594590,'Mumbai','MGR',35000.50),
(5,'Ellina',8765495490,'Kolkata','A/C',10000.50);
#select
# and both condition should be true
select * from Employee where Eaddr ='Kolkata' and Esal = '10000.50';
# or any one condition should be true
select * from Employee where Eaddr = 'Mumbai' and Esal = '35000.50';
#not
select * from Employee where Edept != 'IT';
#in
select * from Employee where Eaddr in('Mumbai','Pune');
#starts with
select * from Employee where Ename like 'E%';
#ends with
select * from Employee where Ename like '%a';
#in between
select * from Employee where Ename like '%f%';
#start and end with
select * from Employee where Ename like 'N%a';
#missing letter
select * from Employee where Eaddr like 'pu_e';
select * from Employee where Eaddr like 'M_R';

select id,Ename,Ephone,Eaddr from Employee;
select * from Employee where id =5;
select * from Employee where Ename='Nisha';
#Distinct (separate)
select distinct id from Employee;
alter table Employee add Comm_pact int after Esalary;
update Employee set Comm_pact = 20 where id = 1;
update Employee set Comm_pact = 15 where id = 2;
update Employee set Comm_pact = 10 where id = 3;
update Employee set Comm_pact = 15 where id = 4;
update Employee set Comm_pact = 25 where id = 5;
#as (add)
select Ename,Esalary,Esalary + 300 as 'Increased_Salary' from Employee;
select Ename,Esalary,Esalary,Comm_pact + 100 as 'Annual_Compensation' from Employee;
select Comm_pact from Employee;
#greater than
select id,Esalary from Employee where Esalary>1500;
#between
select Ename, Esalary from Employee where Esalary between 2000 and 5000;
select * from Employee Where  Esalary = 1000.50 or 5000.50;
