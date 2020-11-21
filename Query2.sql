SELECT Employees.FirstName as Employee_FirstName ,Employees.LastName as Employee_LastName , sum(Quantity) as Sold_Most_Beverages
FROM 
[Employees] inner join 
[Orders] on (Employees.EmployeeID = Orders.EmployeeID) inner join 
[OrderDetails] on (Orders.OrderID = OrderDetails.OrderID) inner join 
[Products] on (OrderDetails.ProductID = Products.ProductID) inner join 
[Categories] on (Products.CategoryID = Categories.CategoryID) 

where CategoryName = 'Beverages'
group by Employee_FirstName , Employee_LastName
order by Sold_Most_Beverages desc
limit 10