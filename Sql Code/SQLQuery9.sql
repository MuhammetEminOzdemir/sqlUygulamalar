
declare @tarih DATETIME
SET @tarih='2022-11-25 09:30:00'
select @tarih

 -- önce tanýmlanan tüm deðiþkenleri bellekten siler 

declare @t datetime
set @t ='2022-11-25 09:30:00'
select dateadd(day,1,@t)

declare @t0 DATETIME
set @t0 ='2022-11-25 09:30:00'
select dateadd(MONTH,1,@t)

declare @t00 DATETIME
set @t ='2022-11-25 09:30:00'
select dateadd(year,1,@t)

declare  @t1 datetime
declare @t2 datetime
set @t1 =getdate()
set @t2= '2022-09-28- 08:00:00'

select datediff(day,@t1,@t2)


select year (@t1) as yýl , month (@t1) as ay , day(@t1 ) as gün

select * from customers

select count (*) as sayý from customers where Country='Germany'

--kaç farklý ülkeye müþteriler ürün göndermiþtir
select count (distinct Country) from Customers

-- en pahalýn beþ ürünü getir 

select top 5  ProductName,UnitPrice  from Products order by UnitPrice desc

---------------
select SYSDATETIME ()
select GETDATE()


declare   @degisken as int =2 
select @degisken

declare  @degisken1 as int =2 
set @degisken1=@degisken1+10
select @degisken1

-----
declare @sayi1 int , @sayi2 int , @ortalama float 
set @sayi1=100
set @sayi2=150
set @ortalama= (@sayi1+@sayi2)/2
select @ortalama as ort


declare @degisken4 as smallint =90 
set @degisken4 = @degisken4*5
select @degisken4



go


declare @sonuc as int =120 
select POWER (@sonuc,2 )
select SQUARE (@sonuc)  --karesinin iki farklý yöntemi
go

select PI() -- PÝ tanýmladýk

--pi* r^2

declare @r float , @sonuc float 
set @r = 5
set @sonuc =PI() *SQUARE (@r)
select @sonuc

go

declare  @sonuc as float =3 
select POWER (@sonuc , 0.5)

go

-- 1 den basla 10 a kadar olan sayýlrýn karelerini bul
declare @i int , @kuvvet int
set @i =1
set  @kuvvet=0 
while @i < 10 
BEGIN
SELECT POWER(@i,@kuvvet)

set  @i =@i+1
set @kuvvet=@kuvvet+1
end

go

---------- 1-10 a karekök 

select SQRT(9)
declare @i int 
set   @i=1
while (@i < 10 )
  begin
  select SQRT(@i)
  set @i =@i +1

  end

  go


  declare @degisken float = 15.55
 -- select FLOOR (@degisken)
 --select CEILING(@degisken) -- yukarýya yuvarlama 
 select ROUND(@degisken,0.5) -- 0.5 e gore yuvarlama

 go

   declare @degisken float = 15.55
   select abs (@degisken) -- mutlak deger almaya yarar

   go


   select SIGN (-10) ---1
   SELECT SIGN(10) ---+1

   GO


   select 10 + rand ()*100

   --------------------------

   select ProductName + ' ' + convert(varchar,UnitPrice) + 'liradýr ' 
   
   
   from Products


   --------------
   
   select ProductName + ' ' + convert(varchar,round(UnitPrice,0.5)) + 'liradýr ' 
   
   
   from Products

   ---------------------------
   select ProductName + ' ' + cast(round(UnitPrice,0.5) as varchar) + 'liradýr ' 
   
   
   from Products

   ------------------------------------------

   select * from [Product Sales for 1997]

   select CategoryName , count(*) from [Product Sales for 1997] group by CategoryName

   --------------------------

   ---  kategoreinde 10 dan fazla olanlarý getir 

   

   select CategoryName , count(*) from [Product Sales for 1997] group by CategoryName having count(*) >10

   -----------

   select LOWER (CategoryName) from [Product Sales for 1997]
   group by CategoryName
   having count (*) >10


      select upper (CategoryName) from [Product Sales for 1997]
   group by CategoryName
   having count (*) >10


   --------------

