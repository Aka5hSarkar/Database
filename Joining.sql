use mydb;
create table fees(form_no varchar(4),amount int,course varchar(15));
insert into fees values
('A1',4000,'java'),
('A2',4000,'java'),
('A3',5000,'python'),
('A4',3000,'ml'),
('A5',3000,'ml'),
('A6',5000,'python'),
('A7',5500,'dsa'),
('A8',5500,'dsa'),
('A9',6000,'c++'),
('B1',7000,'c#');
drop table fees;
select*from fees;
create table Student_join( Id int primary key, 
					Fname Varchar(15),
					Lname Varchar(15),
                    Age int(3),
                    City varchar(10),
                    Form_no varchar(2));
insert into Student_join values(1,'Sankalpa','Das',23,'Hooghly','A1');
insert into Student_join values(2,'Akash','Sarkar',24,'Kolkata','A2');
insert into Student_join values(3,'Debkanta','Chakrabarty',25,'Patuli','A3');
insert into Student_join values(4,'Arnab','Mondal',19,'Nadia','A4');
insert into Student_join values(5,'Deepraj','Poddar',24,'New town','A5');
insert into Student_join values(6,'Srikanta','Biswas',24,'Garia','A6');
insert into Student_join values(7,'Avik','Das',23,'Howrah','A7');
insert into Student_join values(8,'Adil','Rahaman',25,'Behala','A8');
insert into Student_join values(9,'Puja','Sarkar',22,'Barasat','A9');
insert into Student_join values(10,'Bidisha','Sahoo',20,'Rampurhat','B1');
#inner join
select fname,lname,amount,course from Student_join inner join fees on Student_join.Form_No=fees.form_no;
#cross join
select * from student_join cross join fees;
#self join
select s1.fname,s1.age from student_join s1 inner join student_join s2 on s1.age=s2.age and s1.id<>s2.id order by s1.id;
#sub query
select * from student_join where id in(select id from student_join where age>23);
select * from fees where amount=(select max(amount) from fees );
select * from student_join where city not in(select city from student_join where city ='Kolkata');
#any clause
#comparison between a single column value and a range of other values...(ANY and ALL)
#any returns the boolean value if any of the subquery value meet the condition
select fname,form_no from student_join where id>any(select Form_no from fees);
select amount,course from fees where amount>any(select amount from fees);
#all 
select form_no,fname from student_join where id>all(select Form_no from fees);
#not_exists
select fname,age from student_join where not exists(select * from fees where student_join.form_no=fees.form_no);
#rollup
select form_no,count(course),sum(amount) as 'new_column' from fees group by form_no with rollup;
#outer join--left
select student_join.form_no,fname,course from student_join left join fees on student_join.form_no=fees.form_no;
#right outer join
select student_join.form_no,fname,course from student_join right join fees on student_join.form_no=fees.form_no;
#full outer join
select student_join.form_no,student_join.fname,fees.course,fees.amount from student_join full join fees on student_join.Form_no=fees.form_no;

