USE souravdb;
# 1 Create a table EMP1
create table EMP1 (
ID int(2) not null primary key,
Name varchar(10),
Basic float(6,2),
Designation varchar(10),
Age int(2)
);

# 2 Change the data type of the field Basic from float to integer with required size of the EMP1 table
alter table EMP1 modify Basic int(6);
# 3 Change the field size of Name column of the EMP1 table from 10 to 15
alter table EMP1 modify Name varchar(15);
# 4. Create another table EMP_trainee with the same (changed) structure. The column ID to be renamed as Emp_id in the EMP_trainee table.
Create table EMP_trainee (
ID int(2) not null primary key,
Name varchar(10),
Basic float(6,2),
Designation varchar(10),
Age int(2));

 # The column ID to be renamed as Emp_id in the EMP_trainee table.
alter table EMP_trainee rename column ID to Emp_id ;
# 5. Insert following data in EMP1 table: -
INSERT INTO EMP1 VALUES 
(1, 'Rohit', 6700, 'Manager', 24),
(2, 'Sunil', 6200, 'Engineer', 27),
(3, 'Payal', 6300, 'ngineer', 25),
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25);

#6. Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table
INSERT INTO EMP_trainee (Emp_id,Name,Basic,Designation,Age) select ID,Name,Basic,Designation,Age FROM EMP1 WHERE Designation = 'Trainee';
# 7. Display the structure of both the tables.
select * from EMP1;
select * from EMP_trainee;
# 8. Add columns Skills (data type-varchar2 and size-10) and DOJ (data type-date) to the EMP1 table and add data for the Skills and DOJ columns according to your own wish
alter table EMP1 add column Skills varchar(10);
alter table EMP1 add column DOJ date;
       # Skills update
update EMP1 set Skills = 'java' where ID=1;
update EMP1 set Skills = 'JAVASCRIPT' where ID=2;
update EMP1 set Skills = 'SQL' where ID=3;
update EMP1 set Skills = 'HTML,CSS' where ID=4;
update EMP1 set Skills = 'SPRING' where ID=5;
update EMP1 set Skills = 'C++' where ID=6;
       # DOJ update
update EMP1 set DOJ = '2021-01-15' where ID=1;  
update EMP1 set DOJ = '2021-05-09' where ID=2;  
update EMP1 set DOJ = '2021-08-01' where ID=3;  
update EMP1 set DOJ = '2022-02-03' where ID=4;  
update EMP1 set DOJ = '2022-05-10' where ID=5;  
update EMP1 set DOJ = '2022-11-05' where ID=6;       
# 9. Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’.
update EMP_trainee set Designation = 'Programmer_Trainee';
# 10. Update more than one row in one query in EMP1 table.
update EMP1 set Basic = (2* Basic) where ID=1 or ID=3;
# 11.Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5.
alter table EMP1 modify ID varchar(5);
# 12.Display both the tables EMP1 and EMP_trainee.
select * from EMP1;
select * from EMP_trainee;
# 13.Rename the column Age of EMP1 table to Age_in_Years
alter table EMP1 rename column Age_in_Years to Age ;
# 14.Delete the details of all the trainees from the EMP1 table.
delete from EMP1 WHERE Designation ='Trainne';
# 15.Drop the Age column from the EMP_trainee table.
alter table EMP_trainee drop column Age;
# 16.Drop two columns in one query from EMP_trainee table.
alter table EMP_trainee drop column Basic,drop column Designation;
# 17.Rename the table EMP to EMP_Mgr_Engr.
alter table EMP1 rename to EMP_Mgr_Engr;
# 18.Drop the table EMP_Trainee. 
# drop table EMP_Trainee;
# 19.Truncate EMP_Mgr_Engr table.
# truncate table EMP_Mgr_Engr;
# 20.Recover the data of EMP_Mgr_Engr. 