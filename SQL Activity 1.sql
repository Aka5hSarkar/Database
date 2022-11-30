use mydb;
create table student_info (reg_no varchar(50) primary key ,s_name varchar(30) not null,branch varchar(30),
contact_no varchar(13),dob date not null,doj date default(curdate()),address varchar(250),emil_id varchar(250));
create table subject(sub_code varchar(10) primary key,sub_name varchar(50)not null,weightage numeric(3)not null);
create table student_marks(
reg_no varchar (50),foreign key(reg_no) references student_info(reg_no),
sub_code varchar(10),foreign key(sub_code) references subject(sub_code),
semester numeric(3)not null,gpa numeric(5,3) not null,
marks numeric(3) default(0)
);
create table student_result(
reg_no varchar(50),foreign key(reg_no)references student_info(reg_no),
semester numeric(3) not null,gpa numeric(5,3) not null,
is_scholarship_eligible char(3) default('yes'),
primary key(reg_no,semester)
);
