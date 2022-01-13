


update Customers set CompanyName = CustomersWork.CompanyName
From CustomersWork inner join Customers 
on CustomersWork.CustomerID = Customer.CustomerID
where CustomersWork.CompanyName like '&test&'