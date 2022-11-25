use mydb;
create table employee2(
emp_id numeric(6),last_name varchar(25),job_id varchar(10),sal integer(6),dept_id numeric(4)
);
insert into employee2 values 
(1,'sarkar','a1',6500,001),
(2,'mondal','a2',8000,002),
(3,'dey','a3',7000,035),
(4,'ray','a4',12000,047),
(5,'choudhury','b1',8000,007),
(6,'pal','b2',6500,012),
(7,'sarkar','a5',7000,013),
(8,'mondal','b3',6500,003),
(9,'dey','a7',6000,005),
(10,'ray','b11',6000,004);
select * from employee2;
update employee2 set dept_id=035 where emp_id=4;
update employee2 set dept_id=001 where emp_id=2;
update employee2 set dept_id=007 where emp_id=6;
update employee2 set dept_id=003 where emp_id=7;
update employee2 set dept_id=035 where emp_id=9;
update employee2 set dept_id=001 where emp_id=10;

update employee2 set job_id='a2' where emp_id=3;
update employee2 set job_id='a1' where emp_id=2;
update employee2 set job_id='b1' where emp_id=6;
update employee2 set job_id='b2' where emp_id=7;
select*from employee2;
alter table employee2 add comm_per integer(4) after sal;
alter table employee2 add mgr_id integer(6) after comm_per;
alter table employee2 drop column mgr_id;
update employee2 set comm_per=5 where emp_id=1;
update employee2 set comm_per=5 where emp_id=2;
update employee2 set comm_per=5 where emp_id=3;
update employee2 set comm_per=7 where emp_id=4;
update employee2 set comm_per=7 where emp_id=5;
update employee2 set comm_per=7 where emp_id=6;
update employee2 set comm_per=4 where emp_id=7;
update employee2 set comm_per=4 where emp_id=8;
update employee2 set comm_per=3 where emp_id=9;
update employee2 set comm_per=3 where emp_id=10;
update employee2 set job_id='developer' where emp_id=1;
update employee2 set job_id='developer' where emp_id=2;
update employee2 set job_id='developer' where emp_id=3;
update employee2 set job_id='tester' where emp_id=4;
update employee2 set job_id='tester' where emp_id=5;
update employee2 set job_id='tester' where emp_id=6;
update employee2 set job_id='IT' where emp_id=7;
update employee2 set job_id='IT' where emp_id=8;
update employee2 set job_id='IT' where emp_id=9;
update employee2 set job_id='developer' where emp_id=10;
#between
#and
select * from employee2 where sal between 7000 and 10000;
#or
select*from employee2 where sal=6000 or sal=8000 or sal=6500;
select emp_id,last_name,job_id from employee2;
#distinct
select distinct job_id from employee2;
#as
select last_name,emp_id,sal,sal+300 as 'increased_sal' from employee2;
select last_name,emp_id,sal,sal+comm_per+100 as 'annual_compensation' from employee2;
#><
select * from employee2 where sal>8000;
select*from employee2 where sal<8000;
update employee2 set job_id='Grade A' where sal>=8000;
select * from employee2;
