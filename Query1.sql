SELECT Employees.FirstName as Employee_FirstName ,Employees.LastName as Employee_LastName  ,count(Orders.OrderID) as Number_of_Orders 
FROM 
[Employees] inner join 
[Orders] on (Employees.EmployeeID = Orders.EmployeeID) 
group by Employee_FirstName ,Employee_LastName
order by Number_of_Orders desc 
limit 10