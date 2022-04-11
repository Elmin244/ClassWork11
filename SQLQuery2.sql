Create database Department //Database yaradir 
USE Department
Create table Employee
(
   Id INT Primary Key Identity,
   Fullname  nvarchar(255)not Null,
   Age INT not Null  Constraint Dpt_EMP_AGE Check(Age>0),
   Email Nvarchar(60)  not Null Constraint Dpt_EMP_Email Unique,
   Salary Float  not null Constraint Dpt_Emp_Salary  Check(Salary Between  300 and 2000)

)
Select *From Employee
Insert INTO Employee
values('Elmin',19,'huseynlii.elmin@mail.ru',1500),
('Ibrahim',21,'Ibrahim.ibis@mail.ru',1200),
('Senan',20,'abrahim.asfafa@mail.ru',400),
('Ceyhun',29,'Ceyhun.fhgdfh@mail.ru',1200)
UPDATE Employee 
set Salary=300
Where Id=1
Select *from Employee
Where Salary between 500 and 1500

Select Fullname,Email,Salary from Employee order by Salary desc
 Select Fullname from Employee Where Fullname Like '%a%'
 Select * from Employee Where Email Like 'h%'
 Select Count(*)  AS 'COUNT' from Employee where Salary>600 
 


