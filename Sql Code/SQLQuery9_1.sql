select *from Products
select [ProductName],
    CASE [UnitsInStock] WHEN 0 THEN 'Stokta Yok'
	ELSE CONVERT(varchar,UnitsInStock) END AS [Stok Durumu] 
from Products ORDER BY UnitsInStock desc

/*------------------------------------------------------------------------------*/

select *from Employees
select [FirstName],[LastName],[TitleOfCourtesy],
    CASE TitleOfCourtesy WHEN 'Ms.' THEN 'Kadýn'
	WHEN 'Mrs.' THEN 'Kadýn'
	WHEN 'Mr.'  THEN 'Erkek'
	WHEN 'Dr.'  THEN 'Doktor'
	ELSE  '-'   END AS Durum   /*Diðer durumlar için bunu kullan else*/
from Employees

/*--------------------------------------------------------------------------------*/

--GETDATE() KOMUTU  SAAT O ANLIK SAAT ZAMAN DURUMUNU GETÝRÝR
SELECT GETDATE()

--------------------------------------------------------------------------------

--declare deðiþken tanýmlama
Declare  @tarih DATETIME --deðiþken ismi 
SET @tarih='2022-11-25 03:30:25'  --deðiþkeni tanýmlama Atama yapýlýr
Select @tarih  --yazdýrmak için select ile yazdýrýlýr

DECLARE @t DATETIME
SET @t='2022-11-25 03:30:25'
select DATEADD(DAY,1,@t)  --dateadd ile bir gün ekle anlamýnda @t ye ekle

GO
DECLARE @t DATETIME --önce tanýmlanan deðiþken için hata verir bunu kaldýrmak için öncesinde  go kullanýlýr öncesindeki belleði siler
SET @t='2022-11-25 03:30:25'
select DATEADD(MONTH,1,@t)  --dateadd ile bir AY ekle anlamýnda @t ye ekle

GO
DECLARE @t DATETIME
SET @t='2022-11-25 03:30:25'
select DATEADD(YEAR,1,@t)  --dateadd ile bir yýl ekle anlamýnda @t ye ekle

--DATEDIFF METHODU
DECLARE @t1 DATETIME
DECLARE @t2 DATETIME
SET @t1=GETDATE()
SET @t2='2022-09-28 08:00:00'
SELECT DATEDIFF(DAY,@t2,@t1) as gün --datediff methodu t1 ile t2 arasýndaki zaman farkýný alýr gün olarak
SELECT DATEDIFF(MONTH,@t2,@t1) as ay
select DATEPART(DAY,@t1)

--DECLARE FARKLI KULLANIMI
DECLARE @degisken as int=2
select @degisken


DECLARE @degisken1 as int=2
set @degisken1 - @degisken1+10
select @degisken1


Declare @sayi1 int, @sayi2 int, @ortalama float
SET @sayi1-100
SET @sayi2-150
set @ortalama-(@sayi1+@sayi2)/2
SELECT @ortalama AS ortalama

Declare @degisken3 as smallint -100
set @degisken3-@degisken3-5
select @degisken3

--pi * r* 2 alan hesaplama
--SELECT Pi()
GO
DECLARE @r float, @sonuc float
SET @r=5
SET @sonuc=Pi()*SQUARE(@r)
Select @sonuc as Alan

-- 1 DEN 10 A KADAR OLANLARININ AKRESÝNÝ ALMA
Go
Declare @i int, @kuvvet int
set @i=1
set @kuvvet=0
WHILE @i<10
     Begin 
	     Select POWER(@Ý,@kuvvet)
		 SET @i=@i+1
		 SET @kuvvet=@kuvvet+1
	 END 

--1 DEN 10 A KADAR OLAN SAYILARIN KAREKÖKÜNÜ ALMA
GO
DECLARE @i int
SET @i=1
WHILE @i<10
     Begin
	     select SQRT(@i)
		 Set @i=@i+1
	 END


------------------------------------------------------------------------------------------------------------

Declare @degisken float=15.55
Select FLOOR(@degisken)  --alta yuvarlama

GO
Declare @degisken float=15.55
Select CEILING(@degisken)  --YUKARI yuvarlama 

GO
Declare @degisken float=15.55
Select ROUND(@degisken,0.5)  --EN çok kullandýðýmýz yuvarlamadýr

Go
declare @degisken float=-15.47
select abs(@degisken)  --mutlak deðer alýr

--------------------------------------------------------------------------------

Select Count(*) as Sayý from Customers where Country='Germany'

--kaç farklý ülke
Select count(Distinct Country) as [Kaç Farklý Ülke?]  from Customers 

--en pahalý 5 ürün top komutu 
Select top 5 ProductName,UnitPrice
from Products order by UnitPrice desc

Declare @sonuc as int=10  --karelerini alma
select POWER(@sonuc,2)
select SQUARE(@sonuc)

-------------------------------------------------------------------

Select CategoryName, COUNT(*)
from [Product Sales for 1997]
group by CategoryName

Select CategoryName, COUNT(*)
from [Product Sales for 1997]
group by CategoryName
having COUNT(*) >10   

