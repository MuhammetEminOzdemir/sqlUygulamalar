select *from Tbl_OgrenciVize  /*Bütün verileri getirir*/

select ogrenciNo,ogrenciAd from Tbl_OgrenciVize  /*sadece ogrenciNo,ogrenciAd verilerini getirir */

select distinct ogrenciBolum from Tbl_OgrenciVize /*tekrar eden verileri kaldýrýr*/

select *from Tbl_OgrenciVize ORDER BY ogrenciNo ASC /*öðrenci numarasýný artan sýrada sýralar*/
select *from Tbl_OgrenciVize ORDER BY ogrenciNo DESC /*öðrenci numarasýný azalan sýrada sýralar*/

/*Örneðin aþaðýdaki ifade ile Ogrenci tablosundaki
bölüm bilgileri ayný kayýtlar tekrarlanmaksýzýn
artan bir þekilde sýralanak listelenmektedir*/
SELECT  DISTINCT ogrenciBolum FROM Tbl_OgrenciVize ORDER BY ogrenciBolum ASC

/*Tablomuzu 
1-Ad alanýna göre artan,
2-Soyad alanýna göre azalan ve
3-Agno alanýna göre artan sýrada */
SELECT ogrenciAd FROM Tbl_OgrenciVize ORDER BY ogrenciAd asc
SELECT ogrenciSoyad FROM Tbl_OgrenciVize ORDER BY ogrenciSoyad desc
SELECT ogrenciAgno FROM Tbl_OgrenciVize ORDER BY ogrenciAgno asc
/*veya kýsa yolu*/
SELECT ogrenciAd,ogrenciSoyad,ogrenciAgno FROM Tbl_OgrenciVize ORDER BY ogrenciAgno ASC,ogrenciSoyad DESC,ogrenciAgno ASC

/*---AS KOMUTU------*/

SELECT ogrenciSoyad AS ogrenciSoyisim from Tbl_OgrenciVize /*Seçilen sütunlarýn istenilen isimde görüntülenmesini saðlar*/

Select ogrenciNo,ogrenciNo+10 from Tbl_OgrenciVize /*Sütunlar Üzerinde Matematiksel þlemler Yapmak*/


/*where koþul sorgulama iþlemleri*/
select *from Tbl_OgrenciVize where ogrenciBolum='Bilgisayar' /*Tablodan bölümü bilgisayar olanlarý getir*/
select ogrenciAd,ogrenciSoyad,ogrenciAgno from Tbl_OgrenciVize where ogrenciAgno>3
select *from Tbl_OgrenciVize where ogrenciAgno>3 AND ogrenciNo<500
select *from Tbl_OgrenciVize where ogrenciAgno>3 OR ogrenciNo<500
select *from Tbl_OgrenciVize where ogrenciBolum='Hemþirelik' OR ogrenciAgno>3.3 OR ogrenciAd='Muhammet Emin' 

SELECT * FROM Tbl_OgrenciVize WHERE ogrenciSehir IN('Erzurum', 'Antalya') /*ýn komutu ayný or gibi*/
SELECT *FROM Tbl_OgrenciVize WHERE ogrenciBolum IN('Bilgisayar','Elektrik')

SELECT * FROM Tbl_OgrenciVize WHERE ogrenciAgno BETWEEN 3 AND 3.5
select *from Tbl_OgrenciVize where ogrenciNo BETWEEN 1000 AND 1100


/*GROUP BY*/
SELECT ogrenciBolum from Tbl_OgrenciVize Group by ogrenciBolum  /*gruplandýrýrak sorgular disnict komutu ile karýþtýrýlmamalý*/

/*count veri setimizde kaç tane kayýt olduðunu gösterir*/
select count(*) from Tbl_OgrenciVize
select count(*) as [Kayýt Sayýsý] from Tbl_OgrenciVize

/*bölümü bilgisayar olan kayýt sayýsý*/
select count(*) as Bölüm from Tbl_OgrenciVize where ogrenciBolum='Bilgisayar'

/*Tablomuza yeni veri-kayýt ekleme*/
insert into Tbl_OgrenciVize(ogrenciAd,ogrenciSoyad) values('Murat','Atarlý')
insert into Tbl_OgrenciVize(ogrenciNo,ogrenciAd,ogrenciSoyad,ogrenciBolum,ogrenciAgno,ogrenciSehir) 
                            values(355,'Elif','Atarlý','Elektrik',1.8,'Bolu')
insert into Tbl_OgrenciVize(ogrenciNo,ogrenciAd,ogrenciSoyad) values(745,'Muharrem','Özdemir') 


SELECT ogrenciAd + ' ' + ogrenciSoyad AS [Ad Soyad] from Tbl_OgrenciVize

select *from Tbl_OgrenciVize where ogrenciAd LIKE 'C%'  /*Baþ harfi c ile baþlayanlar*/

/*Update Komutu where komutundan sonrasý var olan yenisi set teriminden sonra*/ 
Update Tbl_OgrenciVize SET ogrenciAd='Alperen',ogrenciSoyad='Özdemir' where ogrenciAd='Ahmet Enes' and ogrenciSoyad='Gül'
Update Tbl_OgrenciVize set ogrenciAd='Büþra', ogrenciSoyad='Özdemir' where ogrenciAd='Mustafa' and ogrenciSoyad='Çoþkun'


/*delete komutu o satýrý sildi */
delete from Tbl_OgrenciVize where ogrenciId=6
select*from Tbl_OgrenciVize

select *from Tbl_OgrenciVize WHERE ogrenciAd LIKE '____' AND ogrenciAd LIKE '[^C-Z]'

select count(ogrenciBolum) AS Kayýt from Tbl_OgrenciVize  /*ÖÐRENCÝ BÖLÜMÜNDE KAÇ TANE KAYIT VARDIR*/
select count(distinct(ogrenciBolum)) as tekrarsýz_veri from Tbl_OgrenciVize /*Öðrenci bölümünde kaç tane tekrarsýz veri vardýr*/
			
select ogrenciBolum from Tbl_OgrenciVize group by ogrenciBolum 
select ogrenciBolum, count(*) as adet from Tbl_OgrenciVize group by ogrenciBolum /*öðrenci bölümlerinden kac adet olduðunu getirten sorgulama*/
select ogrenciSehir, count(*) as [Þehir sayýsý] from Tbl_OgrenciVize group by ogrenciSehir

select ogrenciBolum, avg(ogrenciAgno) as agno from Tbl_OgrenciVize group by ogrenciBolum /* öðrenci bölümlerini gruplandýrdý bilgisayar hemþirelik elektrik
                                                                                            avg ile ayrý ayrý agno ortalamasýný aldý as ile agno sütün ismi deðiþti */
insert into Tbl_OgrenciVize(ogrenciAd,ogrenciSoyad) values ('sude','er')

/*UNION komutu tek bir ekranda gösterir birliþtirir*/
select 'Ceren' as Adý,'Buðday' as Soyadý 
UNION
select 'Muhammed Emin' as Adý, 'Özdemir' as Soyadý

SELECT 5+6 /*11 çýktýsý verir*/
SELECT '8'+6  /*Birisi string birisi int veri fakat int veri gibi algýlar toplamý verir*/
SELECT 5+'Kalem' ---hata verir düzeltmek için iki inemli method vardýr

---convert ---cast methodlarý
select convert(varchar,5)+' '+'Kalem' as sonuç
select cast(5 as varchar) +' '+'Kalem' as sonuç

/*Random sayý üretimi*/
select rand()  --0 ile 1 arasý random sayý üretir
select rand()*100  -- 0 ile 100 arasý
select round(rand()*100,0,5) /*tam sayý çevirip random sayý verir */

use NORTHWND
select *from Employees
select FirstName,LastName from Employees /*sadece firstname ve lastname olan kayýtlar gelir*/
 
select FirstName +' '+ LastName as [Ad Soyad] from Employees /*ad soyad verilerini birleþtirerek yeni sütün ismi verdik*/

select *from Products
select Upper(ProductName) as ProductName from Products 
select Lower(ProductName) as [Ürün Adi] from Products

select Upper(ogrenciAd) as Ad from Tbl_OgrenciVize
select lower(ogrenciAd) as soyad from Tbl_OgrenciVize

SELECT ProductName as Adý,UnitPrice as Ücret ,UnitsInStock as [Ürün Miktarý]  from Products order by UnitPrice ASC
/*ProductName, UnitPrice ve UnitsInStock sütünlarýný aldýk as ile yeni sütün ismi tanýmladýk ve order by ile artan sýrada UnitPrice ý sýraladýk */


select FirstName + ' ' + LastName as [AD SOYAD], BirthDate as [Doðum Günü] FROM Employees Order By BirthDate ASC

select [ProductName],[UnitsInStock] from Products where UnitsInStock<10 order by UnitsInStock DESC
/*Burada Products tablosundan ProductName,UnitsInStock sütün kayýtlarýný alarak UnitsInStock10 dan küçük olanlarý al ve azalan sýrada sýrala */

SELECT [CompanyName],[ContactName],[City],[Country] FROM Customers WHERE City='Madrid' or Country='Germany'
/*Burada Customers tablosundan [CompanyName],[ContactName],[City],[Country] verilerini alarak madrid ve almanyalý olanlarý getir */

--LIKE ÇOK ÖNEMLÝ
SELECT ProductName from Products WHERE ProductName LIKE 'C%' --C ÝLE BAÞLAYANLAR
SELECT ProductName from Products WHERE ProductName LIKE '%C%' --Ýçerisinde c olanlar
SELECT ProductName from Products WHERE ProductName LIKE '%Chef%' --Ýçerisinde chef olanlar
SELECT [FirstName],[LastName] FROM Employees WHERE FirstName LIKE 'M%' AND Country='USA'
SELECT [ProductName] FROM Products WHERE ProductName LIKE '%T' --Tile bitenler

SELECT [FirstName],[LastName],[BirthDate] FROM Employees where BirthDate >='1948-01-01' AND BirthDate <'1952-04-05'  

--BETWEEN - AND
SELECT [ProductName],[UnitsInStock] FROM Products WHERE UnitsInStock BETWEEN 0 AND 10 --STOK MÝKTARI 0 ÝLE 10 ARASINDAKÝLER
SELECT [ProductName],[UnitsInStock] FROM Products WHERE UnitsInStock BETWEEN 20 AND 50 ORDER BY UnitsInStock desc
--STOK MÝKTARI 0 ÝLE 10 ARASINDAKÝLER AMA azalan SIRADA

--IN methodu
SELECT [ProductName],[CategoryID] FROM Products where CategoryID IN(1,3,5) ORDER BY CategoryID ASC 
SELECT [ProductName],[CategoryID] FROM Products where CategoryID NOT IN(1,3,5) ORDER BY CategoryID ASC
--IN methodu ile 1 3 5 olanlarý getir çoklu kabul eder not ýn yazarsak olmayanlarý getir,


--Null methodu
 SELECT [Title],[Region] from Employees where Region is null -- NULL olan deðerleri getir
 SELECT [Title],[Region] from Employees where Region is not  null -- NULL olmayan deðerleri getir
 SELECT [ogrenciBolum],[ogrenciAgno] from Tbl_OgrenciVize where ogrenciAgno is not null

 --CASE WHEN THEN methotlarý  !!!!!!!
 --Stoktlara bakýp 0 ise stokta yk varsa stok adetini yazdýrýcaz 
 SELECT ProductName as [Ürün adý], 
     CASE UnitsInStock WHEN 0 THEN 'Stokta yok'
	 ELSE Convert(varchar,UnitsInStock) END AS [Stok Miktarý]
from Products



