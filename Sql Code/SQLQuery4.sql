select *from Tbl_OgrenciKayit

insert into Tbl_OgrenciKayit (ogrNo,ad,soyad,kayitTarihi,dogumYeri) values('9999','Mustafa','Biral','1999-09-02','Erzurum')

select *from Tbl_OgrenciKayit where ogrNo>9999

Update Tbl_OgrenciKayit set ad='Burcu',soyad='ZZZZ' where ad='Burcu' and soyad='Esmersoy'

select ogrNo,ogrNo+10 as [Yeni ogrNo] from Tbl_OgrenciKayit  --tablo sütünlarý üzerinde matematiksel iþlemler yapýlabilir.

delete from Tbl_OgrenciKayit where ogrNo=9999  

select *from Tbl_OgrenciKayit where ogrNo>10001 and ID<5

delete from Tbl_OgrenciKayit where ID=5

select *from Tbl_OgrenciKayit where kayitTarihi>'2000-4-4'

/*and or not */

select *from Tbl_OgrenciKayit where soyad='özdemir'and dogumYeri='Erzurum'

select *from Tbl_OgrenciKayit where soyad='özdemir'  or dogumYeri='Erzurum'

select *from Tbl_OgrenciKayit where not dogumYeri='Erzurum'

