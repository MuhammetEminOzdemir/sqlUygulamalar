--1film tablosunda bulunan replacement_cost sütununda bulunan 
--birbirinden farklı değerleri sıralayınız.
Select DISTINCT replacement_cost from film 

---------------------------------------------------------------------------------------------------

--2 film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film;

---------------------------------------------------------------------------------------------------

--3film tablosunda bulunan film isimlerinde (title) kaç tanesini 
--T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating='G';

---------------------------------------------------------------------------------------------------

--4 country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT Count(*) from country where country LIKE '_____'

---------------------------------------------------------------------------------------------------

--5city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
SELECT COUNT(*) FROM city WHERE  city ILIKE '%r'