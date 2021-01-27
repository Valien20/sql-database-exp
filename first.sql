--Select
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers
Select *from Customers where City='London'

Select *from Products where categoryId=1 or categoryid=3

Select *from Products where categoryId=1 and unitprice>10

select*from products order by ProductName

select *from products order by CategoryID,ProductName

select* from products order by UnitPrice asc --ascending

select*from products where CategoryID=1  order by unitprice desc --descending

select count(*) from products

select count(*) from products where categoryid=1




select categoryid,count(*) from products where unitprice>20
group by categoryid having count(*)<10

select products.productid,products.ProductName,products.UnitPrice,categories.categoryname
from products inner join categories
on products.categoryid=categories.categoryid
where products.unitprice>10

--DTO data transformation object

select*from products  p inner join [Order Details] od
on p.productID=od.ProductID
inner join orders o
on o.orderid=od.OrderID

select*from customers c left join orders o
on c.customerid=o.customerid
where o.CustomerID is null

--left-inner-right
