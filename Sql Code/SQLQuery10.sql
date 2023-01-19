select *from Orders

--select sum (Freight) from 
-- (freight) from orders
select min (Freight) from orders
select avg (Freight) from Orders

select ShipCity,sum (freight) as toplam from orders

order by ShipCity
order by ShipCity



select ShipName,ShipCity,sum(Freight),count(*) as [Toplam Sipariþ]

from orders
group by ShipName,ShipCity
order by ShipCity


select ShipName ,ShipCity, SUM (Freight) Sonuc,count(*) as [Toplam Sipariþ]
from Orders 
group by ShipName,ShipCity,ShipRegion
having ShipRegion='SP'

select ShipName,ShipCity, -- topla sipariþi 300 den fazla olanlarý gertir
sum(Freight) Sonuc
from Orders
group by ShipName,ShipCity
having sum (Freight)>300 

----------------------------------join-----------------------

select  o.Freight, o.ShipCity from Orders o

select * from Products
select * from Categories
select * from Suppliers

--- içeceklerinin isimlelrini getirecez 

select * from Products
where CategoryID=1 and SupplierID=1

select  CategoryName from Categories where CategoryID=1

select * from Products
where CategoryID=(select CategoryID from Categories where CategoryName='Beverages') and
SupplierID=(select SupplierID from Suppliers where CompanyName='Exotic Liquids')




