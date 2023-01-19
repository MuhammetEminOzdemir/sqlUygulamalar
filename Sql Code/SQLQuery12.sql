select * from Employees

select FirstName + ' ' + LastName as [Ad Soyad] from Employees  --ad soyad birleþtirme

CREATE PROCEDURE up_isimSoyisimBirlestir
AS
BEGIN
     --Bu aralýða kodlar yazýlýr
     select FirstName + ' ' + LastName as [Ad Soyad] from Employees
END
up_isimSoyisimBirlestir  --bunu seçerek çaðýrýrýrz

EXECUTE up_isimSoyisimBirlestir --2.yöntem

EXEC up_isimSoyisimBirlestir  --3.yöntem
-------------------------------------------------------------

--Parametreli sp  SINAVDA GELÝR ÇOK ÖNEMLÝ
CREATE PROC up_UlkeveCinsiyeteGöreGetir
@TitleOfCourtesy nvarchar(25),  --2 parametre alýr  navarchar yani @ olanlar deðiþken
@Country nvarchar(15)
AS
BEGIN
    SELECT *FROM Employees
	WHERE TitleOfCourtesy=@TitleOfCourtesy and Country=@Country
END

exec up_UlkeveCinsiyeteGöreGetir 'Ms.', 'USA'

sp_helptext up_UlkeveCinsiyeteGöreGetir  -- kodu getirir


-----------------------------------------------------------

--Bunu yaparsan hata alýrsýn baþka sp yaratamazsýn kullanma yöntemi ise CREATE yerine ALTER yazýlýr daha önce yazýlan
--sp nin deðiiþtirilmesini saðlar

ALTER PROCEDURE up_isimSoyisimBirlestir
AS
BEGIN
     --Bu aralýða kodlar yazýlýr
     select FirstName + ' ' + LastName as [Ad Soyad] from Employees
	 Order by FirstName
END
EXEC up_isimSoyisimBirlestir

--------------------------------------------------------------------------

DROP PROC up_isimSoyisimBirlestir  --SÝLME ÝÞLEMÝ YAPAR sildi 


/*----------------------------------------------------------------------------*/

--Þifreleme

ALTER PROC up_UlkeveCinsiyeteGöreGetir
@TitleOfCourtesy nvarchar(25),  
@Country nvarchar(15)
WITH ENCRYPTION  --ÞÝFRELEME
AS
BEGIN
    SELECT *FROM Employees
	WHERE TitleOfCourtesy=@TitleOfCourtesy and Country=@Country
END
sp_helptext up_UlkeveCinsiyeteGöreGetir

/*----------------------------------------------------------------------------*/

--OUTPUT PARAMETRELÝ SP
--Tablodaki TitleOfCourtesy deðerine göre kaç kiþi olduðunu parametre olarak girerek döndürüp sonuç verecek

CREATE PROC up_TitleDurumunaGoreKisiSayisiniGetir
@TitleOfCourtesy nvarchar(25),
@sonuc int output --çýkýþ parametresi olduðunu belirtmemiz lazým o yüzden output yazýlýr
AS
BEGIN
  SELECT sonuc=COUNT(*) FROM Employees
  WHERE TitleOfCourtesy=@TitleOfCourtesy
END

DECLARE @deger int
EXEC up_TitleDurumunaGoreKisiSayisiniGetir  'Ms.', @deger out
print @deger

----------------------------------------------------------------------------------------

sp_help up_TitleDurumunaGoreKisiSayisiniGetir --**!!!** çok önemli veri tabandaki sp nin bize ne zaman yaratýldýðýný verir

----------------------------------------------------------------------------------------------

sp_depends up_TitleDurumunaGoreKisiSayisiniGetir --Tablodaki hangi sütün adýný ilgilendirdiðini update yapýldý mý bunlara bakar

----------------------------------------------------------------------------------------------