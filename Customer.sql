use mydb;
create table CUSTOMER (
Cust_id varchar(5),Fname varchar(15),Lname varchar(15),Area char(2),
Phone bigint(10),DOB date,Payment numeric(6,2)
);
insert into CUSTOMER values
('A01','Ivan','Ross','SA',6125467,'1986.01.15',800.50),
('A02','Vandana','Ray','MU',5560379,'1987.12.20',1000.75),
('A03','Pramada','Jauguste ','DA',4560389,'1967.07.25',500.00),
('A04','Basu','Navindi','BA',6125401,'1956.02.29',860.00),
('A05','Ravi','Shridhar','NA',null,'1989.02.15',500.50),
('A06','Rukmini','Aiyer','GH',5125274 ,'1987.07.23',1500.50);
desc CUSTOMER;
select * from CUSTOMER;
insert into CUSTOMER value
('A07','Akash','Sarkar','IN',3425672,curdate(),900.50);
select*from CUSTOMER;
update CUSTOMER set Phone=1234567 where Cust_id='A02';
update CUSTOMER set Phone=9294567 where Cust_id='A04';
update CUSTOMER set DOB='1998.02.17' where Cust_id='A03';
update CUSTOMER set DOB='1980.05.23' where Cust_id='A05';
select*from CUSTOMER;
delete from CUSTOMER where Cust_id='A01';
delete from CUSTOMER where Cust_id='A05';
truncate CUSTOMER;
insert into CUSTOMER values
('A08','Ram','Mondal','IN',1441848,'2000.04.12',670.00),
('A09','Ram','Halder','IN',9437397,'2000.06.21',670.50),
('A10','Shyam','Mondal','UK',6671848,'1990.04.17',610.50),
('A11','Prakash','Mondal','IN',3331848,'2000.11.12',670.00),
('A12','Bikash','Ray','US',1987848,'1995.12.01',800.00);
update CUSTOMER set  Lname='Biswas' where Cust_id='A11';
delete from CUSTOMER where Area='UK';


