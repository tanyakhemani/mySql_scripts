create if not exists database company_hr_records;
use company_hr_records;

drop table employee;
create table employee(
	emp_id int auto_increment,
	name varchar(20),
	department varchar(20),
	salary int,
	city varchar(20),
	primary key(emp_id)
);


insert into employee values (100,'John Wills', 'logistics', 30000, 'Corvallis');
insert into employee values (200,'Mike William', 'sales', 35000,'Seattle');
insert into employee values (300,'Michael Scott', 'Finance', 60000, 'Portland');
insert into employee values (400,'Jake Watson', 'sales', 40000, 'Boston');
insert into employee values ( 500,'Andy Bernard', 'finance', 55000,'Portland');
insert into employee values (600, 'Tom Grooves', 'logistics', 25000,'San Francisco');
insert into employee values (700,'Jane Anderson', 'sales', 45000,'Boston');
insert into employee values (800,'Olivia Crisp', 'finance', 45000, 'Los Angeles');

select * from employee;
