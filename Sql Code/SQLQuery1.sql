USE ogrenci2022
select * from Tbl_Ogrenci  /*tbl öðrenci datebase i çaðýrdýk*/

select * from Tbl_Ogrenci
where OgrenciBolum='bilgisayar' --bölümü bilgisayar olaný sesle where komutu

select OgrenciAdi,OgrenciSoyad from Tbl_Ogrenci --TBL öðrenci databaseinden ogrenci ad ve soyadý sesledik 

select OgrenciAdi,OgrenciSoyad,OgrenciBolum from Tbl_Ogrenci where OgrenciBolum='elektrik'

select * from Tbl_Ogrenci where OgrenciBurs=1 --buradaki 1 0 true false dur 1 bursu olanlar 

select OgrenciAdi,OgrenciSoyad from Tbl_Ogrenci where OgrenciBurs=0 and OgrenciSehir='erzurum' 

select *from Tbl_Ogrenci where OgrenciGirisYili>2018 -- giriþ yýlý 2018 den büyük olan

--memleketi erzurum olup veya bölümü bilgisayar olanlar
select * from Tbl_Ogrenci
where OgrenciSehir='erzurum' or OgrenciBolum='bilgisayar'

select * from Tbl_Ürün

select [Stok Miktarý]  from Tbl_Ürün --tablo da boþluk býrakmak istiyorsak kesinlikle köþeli parantezde yazmalýyýz tablodada

select [OgrenciNo],[OgrenciAdi],[OgrenciSoyad] from Tbl_Ogrenci --soldaki menüden columns dan sürükleyebiliriz

