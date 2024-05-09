create database comdetails;
show databases;
use comdetails;
show tables;
drop database comdetails;

describe branch;
describe Employee;

drop table branch;
drop table Employee;

truncate table branch;
truncate table Employee;

create table branch(
BranchID int not null auto_increment primary key,
Branch varchar(30) not null,
Address varchar(50) not null  );

create table Employee(
ID int not null auto_increment primary key,
Name varchar(25) not null,
WorkName varchar(15) not null,
Salary int not null,   EID int,
foreign key (EID) references branch(BranchID)   );

insert into branch(BranchID,Branch,Address)values(null,"Orathanadu","12/1,Pokkara theru"),
(null,"Thondarampattu","12/5,South Street"),(null,"Papanadu","12/6,North Street"),
(null,"Pattukkottai","12/4,East Street"),(null,"Thiruvonam","12/8,West Sttreet");

insert into Employee(ID,Name,WorkName,Salary,EID)
values(null,"Raja","Manager",45000,1),(null,"Mani","Manager",25000,3),
(null,"Guna","Manager",45000,3),(null,"Maran","Manager",45000,4),
(null,"Senthil","Manager",45000,5),(null,"Raghu","ASSManager",35000,1),
(null,"Alex","ASSManager",35000,2),(null,"Hari","ASSManager",35000,3),
(null,"Akash","AssManager",35000,4),(null,"Nesavaran","ASSManager",35000,5),
(null,"Karan","Staff",25000,1),(null,"Kajay","Staff",25000,2),
(null,"Tamil","Staff",25000,3),(null,"Elam","Staff",25000,4),
(null,"Dhoss","Staff",25000,5),(null,"Dhina","CreditAnalyst",20000,1),
(null,"Gokul","CreditAnalyst",20000,2),(null,"Vikram","CreditAnalyst",20000,3),
(null,"Naveen","CreditAnalyst",20000,4),(null,"Kathir","CreditAnalyst",20000,5);

update Employee set Name="Manikandan " where ID=2;
update Employee set WorkName="ChifManager " where WorkName="Manager ";

select*from branch;
select*from Employee;
 
 alter table Employee change WorkName Work varchar(20);
 
 alter table Employee drop column salary ;
 
select WorkName,count(EID) from Employee
group by WorkName;

select Name,WorkName,Salary from Employee order by Salary desc;
 
 
 
 
 create view Ba_EMP as
 select Employee.ID,Employee.Name,Employee.Salary,Employee.WorkName ,branch.BranchID,branch.Address,branch.branch
 from Employee inner join branch
 on Employee.EID=branch.BranchID order by BranchId;

select* from Ba_Emp;


select person.firstName,person.lastName,Address.city,Address.state
from Person left join Address
 on person.personId=Address.personId;

