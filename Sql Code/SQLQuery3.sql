use BtkMusteri /*btk musteri database ini kullan*/

select *from Tbl_BtkMusteri /*Bütün verileri getirir*/

select *from Tbl_BtkMusteri where Gender='Kýz' /*if gibi bir durum yani müþteri tablosundan cinsiyeti kýz olanlarý sesle*/

select CustomerName,City from Tbl_BtkMusteri /*tablodan sadece isim ve þehir bilgisini sesledik*/

insert into Tbl_BtkMusteri(CustomerName,City,BirthDate,District,Gender) values('Ceren Buðday','Erzurum','2000-09-02','Yakutiye','Kýz')

Update Tbl_BtkMusteri set Nation='TR',Age=DATEDIFF(YEAR,BÝRTHDATE,GETDATE())
/*Buradaki datediff iki tarih arasýndaki farký alýr getdate ise þimdiki taih fonksiyonudur*/

select *from Tbl_BtkMusteri where BirthDate>'1983'