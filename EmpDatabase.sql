use mydb;

create table emp1(
id numeric (2),
id_name varchar(10),
basic numeric(6),
designation varchar(10),
age numeric(2));
alter table emp1 modify basic integer(6);
alter table emp1 modify id_name varchar(15);
create table emp_trainee
(emp_id numeric(2),id_name varchar(10),basic numeric(6),designation varchar(10),age numeric(2));
alter table emp1 modify designation varchar(50);
insert into emp1 values
(1,'dev',3000,'manager',23),
(2,'akash',5000,'manager',23),
(3,'Bikash',4000,'manager',23),
(4,'Prakash',4500,'manager2',23),
(5,'Sagar',4100,'manager2',23);
insert into emp_trainee select * from emp1;
select*from emp1,emp_trainee;
alter table emp1 add skills varchar(30) after age;
alter table emp1 add doj date after skills;
update emp1 set skills='java' where id=1;
update emp1 set skills='java' where id=2;
update emp1 set skills='java' where id=3;
update emp1 set skills='IT' where id=4;
update emp1 set skills='IT' where id=5;
update emp1 set doj='2022.02.05' where id=1;
update emp1 set doj='2022.01.15' where id=2;
update emp1 set doj='2022.06.25' where id=3;
update emp1 set doj='2022.04.05' where id=4;
update emp1 set doj='2022.07.11' where id=5;
update emp1 set designation='IT specialist' where skills='IT';
select*from emp1,emp_trainee;
delete from emp1 where doj='2022.07.11';
select*from emp1;