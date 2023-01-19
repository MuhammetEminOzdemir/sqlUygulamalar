select tc.Adý,tc.Soyadý,
notlar.Vize,notlar.Final,notlar.Ders

from Tbl_TC tc

inner join Tbl_Not notlar ON
tc.TC=notlar.TC   --TABLODAKÝ BAZI VERÝLERÝ BÝRLEÞTÝRDÝK ÝKÝ TABLODAKÝ ORTAK OLANLAR GELÝR

/*-------------------------------------------------------------------------------------*/

select t1.Final,t1.Ders,T2.Adý,t2.Soyadý
from Tbl_Not t1
LEFT JOIN Tbl_TC t2 ON
t1.TC=t2.TC   --sadece final notu girilenler geldi

/*-------------------------------------------------------------------------------------*/

select t1.Ders,t2.Adý,T1.Vize,T1.Final
from Tbl_Not t1
FULL JOIN Tbl_TC t2 On
t1.TC=t2.TC


/*-------------------------------------------------------------------------------------*/
--norrthwnd databasei

SELECT *FROM Products
select *from Categories
select*from Suppliers

SELECT P.ProductName,p.UnitsInStock,c.CategoryName,s.CompanyName
from Products p
JOIN Categories c ON p.CategoryID=c.CategoryID
JOIN Suppliers s ON p.SupplierID=s.SupplierID

/*-------------------------------------------------------------------------------------*/

SELECT P.ProductName,p.UnitsInStock,c.CategoryName,s.CompanyName
from Products p
JOIN Categories c ON p.CategoryID=c.CategoryID
JOIN Suppliers s ON p.SupplierID=s.SupplierID
WHERE UnitsInStock BETWEEN 0 AND 10
ORDER BY UnitsInStock DESC

/*-------------------------------------------------------------------------------------*/

SELECT P.ProductName,p.UnitsInStock,c.CategoryName,s.CompanyName,p.UnitPrice as Fiyat
from Products p
JOIN Categories c ON p.CategoryID=c.CategoryID
JOIN Suppliers s ON p.SupplierID=s.SupplierID
WHERE UnitsInStock BETWEEN 0 AND 10
ORDER BY UnitPrice --fiyata göre sýralama 

--2.önemli sýralama þekli çok önemli

SELECT P.ProductName,p.UnitsInStock,c.CategoryName,s.CompanyName,p.UnitPrice as Fiyat
from Products p
JOIN Categories c ON p.CategoryID=c.CategoryID
JOIN Suppliers s ON p.SupplierID=s.SupplierID
WHERE UnitsInStock BETWEEN 0 AND 10
ORDER BY Fiyat

/*-------------------------------------------------------------------------------------*/
--string iþlemleri

declare @deneme as char(50)
set @deneme='Hello world' 
select @deneme

select @deneme as sonuc, 
LEN(@deneme) as uzunluk, --hello world 11 kelimeden oluþtuðunu söyler
DATALENGTH(@deneme) as datauzunlugu

declare @deneme1 as char(7) ='Merhaba'
select @deneme1 as sonuç

select left(@deneme1,2) as sol --ilk 2 karakter alýr soldan
select Right(@deneme1,2) as sað --ilk 2 karakter alýr soldan
select SUBSTRING(@deneme1,3,4) as karakter_alma --3. karakterden baþlayýp 4 karakter al

GO
declare @deneme as char(30) 
set @deneme='     Muhammed Emin Özdemir        '
select @deneme
select LTRIM(@deneme)  --soldaki boþluklarý kullanýr
select RTRIM(@deneme) --saðdakileri siler
select CHARINDEX('a',@deneme) --ilk bulduðu a harfinin index ini gönderir
select PATINDEX('%Emin%',@deneme) 
select REPLACE(@deneme, 'a','e') --harf deðiþikliði

/*-------------------------------------------------------------------------------------*/

select UnitPrice,ProductName,
	CASE WHEN UnitPrice>=20 THEN 'Pahalý'
	ELSE 'Ucuz' END as Durum
from Products

/*-------------------------------------------------------------------------------------*/
--	IIF YAPISI

select UnitPrice,ProductName,
IIF(UnitPrice>=20,'Pahalý','Ucuz') as Durum
from Products 

/*-------------------------------------------------------------------------------------*/
--CHOOSE 

select CHOOSE(3,FirstName,LastName,CONCAT(FirstName,' ',LastName)) as Kiþiler --buradaki concat birliþtirir isim soyisim
from Employees

/*-------------------------------------------------------------------------------------*/
--COALESCE
select COALESCE(Region,City,Country,'Belirtilmemiþ') AS durum
from Employees