use mydb;
create table employee3(
empid int primary key,ename varchar(20) not null,
designation varchar(20)not null,dept varchar(20),
working_hour varchar(10),sal integer(6));
insert into employee3 values
(1,'akash','developer','SDE','8',20000),
(2,'bikash','developer','SDE','8',20000),
(3,'devkanta','developer','SDE','8',25000),
(4,'prakash','tester','TE','8',19000),
(5,'ram','tester','TE','9',26000),
(6,'arnab','developer','SDE','7',25000),
(7,'shyam','tech support','IT','9',18000),
(8,'sagar','tech support','IT','9',18000),
(9,'avi','sn. developer','SDE','7',26000),
(10,'deep','developer','SDE','8',20000);
select * from employee3;
#aggregates function
#count
select dept,count(dept) as'total_emp_in_dept' from employee3 group by dept;
#sum
select dept,sum(working_hour) as 'total_hrs' from employee3 group by dept;
select dept,sum(working_hour) as 'total_hrs'from employee3 where dept='SDE';
#average
select dept,avg(sal) as 'avg_sal' from employee3 group by dept;
#min
select ename,dept,min(sal) as'max'from employee3 group by dept;
#having
select dept,sum(working_hour) as 'total_hrs' from employee3 group by dept having sum(working_hour)>16;
