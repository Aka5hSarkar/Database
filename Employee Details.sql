use mydb;
create table employee_details(
empid int(7) primary key auto_increment,
empname varchar(20) not null,
empaddress varchar(50) not null,
empphone bigint(11)not null unique
);
alter table employee_details add age int(3) not null after empaddress;
alter table employee_details modify empname varchar(40) not null;
alter table employee_details drop column empphone;
alter table employee_details change column age empage int(3);
insert into employee_details values
(1,'Akash','Kolkata',23),
(2,'Bikash','Kolkata',23),
(3,'Prakash','Sonarpur',22),
(4,'ABC','Bankura',24),
(5,'XYZ','Medinipur',22);
delete from employee_details where empid=2;
truncate table employee_details;