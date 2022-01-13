/*WORKSHOP 1*/
/***************QUESTION 1 GET THE REPS WHO HASE NEVER MADE SALES */

Select e.FirstName,e.LastName from Employees e left join Orders o on
e.EmployeeID = o.EmployeeID
where o.EmployeeID is null

/*WORKSHOP 2*/
/*************** Which products sales how many ? */

Select p.ProductName, count(od.Quantity) as Adet from [Order Details] od inner join Products p on
p.ProductID = od.ProductID group by p.ProductName 

/*************** Which category sales how many ? */

Select c.CategoryName, count(*) from Categories c inner join Products p on
c.CategoryID = p.CategoryID
inner join [Order Details] od on od.ProductID = p.ProductID
group by c.CategoryName 

/*************** Which employee reports to who ? */

/*Self join exmaple*/

Select e2.FirstName + ' ' + e2.LastName as Names, e1.FirstName + ' ' + e1.LastName as Reported 
from Employees e1 right join Employees e2 on
e1.EmployeeID = e2.ReportsTo


