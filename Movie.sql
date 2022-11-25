use mydb;
create table CUSTOMER2 (
Cust_id varchar(5)primary key,Fname varchar(15) not null,Lname varchar(15),Area char(2) not null,
Phone bigint(10));
insert into CUSTOMER2 values
('A01','Ivan','Ross','SA',6125467),
('A02','Vandana','Ray','MU',5560379),
('A03','Pramada','Jauguste ','DA',4560389),
('A04','Basu','Navindi','BA',6125401),
('A05','Ravi','Shridhar','NA',null),
('A06','Rukmini','Aiyer','GH',5125274);
create table Movie(
Mv_no int(2)primary key ,Cust_id varchar(5),Title varchar(30)not null,Star varchar(20)not null,
Price int(4),check(Price>=100 and price<=250) 
);
alter table Movie add foreign key(Cust_id) references CUSTOMER2(Cust_id);
insert into Movie values
(1,'A02','Bloody','JC',181),
(2,'A04','The Firm','TC',200),
(3,'A01','Pretty Woman','RG',151),
(4,'A06','Home Alone','MC',150),
(5,'A05','The Fugitive','MF',200),
(6,'A03','Coma','MD',100),
(7,'A02','Dracula','GO',150),
(8,'A06','Quick Change','BM',100),
(9,'A03','Gone with the Wind','CB',200),
(10,'A05','Carry on Doctor','LP',100);
desc CUSTOMER2;
desc Movie;
select Title from Movie where Price>100 and price<200;
select Cust_id from Movie where Star='JC' or Star='TC' or Star='MC';
select*from CUSTOMER2 where Area like '%A%';
select Title from Movie where length(Title)=6 and Price<=180;
select Title,Price,(110*price)/100 as 'Incremented_Price' from Movie;
select concat(Fname,' ',Lname,' stays in ',Area,' and his phone number is ',Phone) from CUSTOMER2;
alter table CUSTOMER2 modify Lname varchar(15) not null;
select Fname from CUSTOMER2 where Phone is null;
update CUSTOMER2 set Phone=2365829 where Fname='Ravi';
select distinct Cust_id from Movie;
alter table Movie modify Star varchar(20);
delete from CUSTOMER2 where Fname='Ravi';
delete from Movie where Mv_no=1;
drop table Movie;
drop table CUSTOMER2;
