/*
1-test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
2-Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
3-Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
4-Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
*/


--1-
CREATE TABLE IF NOT EXISTS employee(
  
  id INTEGER,
  name VARCHAR(50),
  birthday DATE,
  email VARCHAR(100)
);

--2-
insert into employee (id, name, birthday, email) values (1, 'Wang LLelweln', null, 'wllelweln0@edublogs.org');
insert into employee (id, name, birthday, email) values (2, 'Mic Keilty', '1983/08/22', 'mkeilty1@gmpg.org');
insert into employee (id, name, birthday, email) values (3, 'Tirrell Minico', '1919/10/30', 'tminico2@printfriendly.com');
insert into employee (id, name, birthday, email) values (4, 'Jammie Nerheny', null, 'jnerheny3@bloglines.com');
insert into employee (id, name, birthday, email) values (5, 'Tore O'' Brian', '1972/06/22', 'to4@amazonaws.com');
insert into employee (id, name, birthday, email) values (6, 'Axe Lippard', '1959/09/11', 'alippard5@cnn.com');
insert into employee (id, name, birthday, email) values (7, 'Norbert Norcutt', '1908/11/26', 'nnorcutt6@taobao.com');
insert into employee (id, name, birthday, email) values (8, 'Elspeth Lewton', '1995/03/01', 'elewton7@va.gov');
insert into employee (id, name, birthday, email) values (9, 'Erich Codling', null, 'ecodling8@mediafire.com');
insert into employee (id, name, birthday, email) values (10, 'Cristal Dimitrov', null, 'cdimitrov9@photobucket.com');
insert into employee (id, name, birthday, email) values (11, 'Udell Cuss', '1975/10/02', 'ucussa@buzzfeed.com');
insert into employee (id, name, birthday, email) values (12, 'Katrinka Veighey', '1944/08/06', 'kveigheyb@prnewswire.com');
insert into employee (id, name, birthday, email) values (13, 'Linet Fedynski', '1979/10/23', 'lfedynskic@rambler.ru');
insert into employee (id, name, birthday, email) values (14, 'Ferrel Dresse', '1993/03/13', 'fdressed@webeden.co.uk');
insert into employee (id, name, birthday, email) values (15, 'Jemmie Hallsworth', null, 'jhallsworthe@ftc.gov');
insert into employee (id, name, birthday, email) values (16, 'Dun Hickisson', '1970/05/29', 'dhickissonf@shop-pro.jp');
insert into employee (id, name, birthday, email) values (17, 'Flori Godlee', '1924/02/23', 'fgodleeg@fotki.com');
insert into employee (id, name, birthday, email) values (18, 'Greg Goodship', '1927/12/26', 'ggoodshiph@flickr.com');
insert into employee (id, name, birthday, email) values (19, 'Gordon Veryan', '1943/08/12', 'gveryani@deviantart.com');
insert into employee (id, name, birthday, email) values (20, 'Leontyne Woolger', '1984/05/08', 'lwoolgerj@wikipedia.org');
insert into employee (id, name, birthday, email) values (21, 'Menard Ongin', '1917/07/18', 'mongink@addthis.com');
insert into employee (id, name, birthday, email) values (22, 'Laura Cianelli', '1967/09/03', 'lcianellil@liveinternet.ru');
insert into employee (id, name, birthday, email) values (23, 'Glynis Glisenan', '1930/06/22', 'gglisenanm@phoca.cz');
insert into employee (id, name, birthday, email) values (24, 'Philomena Congram', '1943/07/01', 'pcongramn@chronoengine.com');
insert into employee (id, name, birthday, email) values (25, 'Tamera Blaszczak', '1932/01/01', 'tblaszczako@irs.gov');
insert into employee (id, name, birthday, email) values (26, 'Grayce Slack', '1908/09/19', 'gslackp@irs.gov');
insert into employee (id, name, birthday, email) values (27, 'Rebecca Bennion', null, 'rbennionq@netvibes.com');
insert into employee (id, name, birthday, email) values (28, 'Ethelin Tucknutt', '1999/04/08', 'etucknuttr@newsvine.com');
insert into employee (id, name, birthday, email) values (29, 'Duke Varnam', null, 'dvarnams@va.gov');
insert into employee (id, name, birthday, email) values (30, 'Frazier Bassick', '1935/09/21', 'fbassickt@github.io');
insert into employee (id, name, birthday, email) values (31, 'Tabbi Letessier', '1901/10/22', 'tletessieru@kickstarter.com');
insert into employee (id, name, birthday, email) values (32, 'Valerie Visco', '1906/02/23', 'vviscov@blogtalkradio.com');
insert into employee (id, name, birthday, email) values (33, 'Hercules Stennard', '1985/01/15', 'hstennardw@shinystat.com');
insert into employee (id, name, birthday, email) values (34, 'Ida Piper', '1972/02/19', 'ipiperx@issuu.com');
insert into employee (id, name, birthday, email) values (35, 'Sara Mackness', '1997/02/06', 'smacknessy@microsoft.com');
insert into employee (id, name, birthday, email) values (36, 'Dario Markovic', '1921/07/13', 'dmarkovicz@google.nl');
insert into employee (id, name, birthday, email) values (37, 'Maryjo Chipps', '1927/08/21', 'mchipps10@irs.gov');
insert into employee (id, name, birthday, email) values (38, 'Wilburt Jiras', '1917/07/16', 'wjiras11@skyrock.com');
insert into employee (id, name, birthday, email) values (39, 'Fania Raimbauld', '1960/03/08', 'fraimbauld12@ustream.tv');
insert into employee (id, name, birthday, email) values (40, 'Charlean Balser', '1916/03/18', 'cbalser13@reddit.com');
insert into employee (id, name, birthday, email) values (41, 'Caro Cossans', '1932/12/24', 'ccossans14@thetimes.co.uk');
insert into employee (id, name, birthday, email) values (42, 'Shawn Escalera', '1993/07/27', 'sescalera15@drupal.org');
insert into employee (id, name, birthday, email) values (43, 'Abbe Cressor', '1965/02/19', 'acressor16@de.vu');
insert into employee (id, name, birthday, email) values (44, 'Gerard Skerratt', '1951/05/20', 'gskerratt17@washingtonpost.com');
insert into employee (id, name, birthday, email) values (45, 'Olympie Sigars', '1941/07/02', 'osigars18@ameblo.jp');
insert into employee (id, name, birthday, email) values (46, 'Janifer MacQueen', '1951/05/05', 'jmacqueen19@webs.com');
insert into employee (id, name, birthday, email) values (47, 'Jaynell Ferro', '1972/03/08', 'jferro1a@g.co');
insert into employee (id, name, birthday, email) values (48, 'Dianne Basley', '1983/10/15', 'dbasley1b@hp.com');
insert into employee (id, name, birthday, email) values (49, 'Arlee Bathurst', '1936/11/21', 'abathurst1c@disqus.com');
insert into employee (id, name, birthday, email) values (50, 'Katine Fasler', '1902/04/02', 'kfasler1d@cdc.gov');

--3-
UPDATE employee
SET name = 'Abdurrahman Alptekin'
WHERE name LIKE 'S%'
RETURNING *;

UPDATE employee
SET name = 'Kazım'
WHERE id = 8
RETURNING *;

UPDATE employee
SET email = NULL
WHERE id > 40
RETURNING *;


UPDATE employee
SET name = 'XYXY'
WHERE id = '17'
RETURNING *;

UPDATE employee
SET birthday = NULL
WHERE name LIKE 'A%n'
RETURNING *;

--4-

DELETE FROM employee
WHERE email LIKE 't%'
RETURNING *;

DELETE FROM employee
WHERE id > 42
RETURNING *;

DELETE FROM employee
WHERE birthday IS NULL
RETURNING *;

DELETE FROM employee
WHERE name = 'Abdurrahman Alptekin'
RETURNING *;

DELETE FROM employee 
WHERE  birthday >= '1990-01-01'
AND birthday <= '2000-01-01'
RETURNING *;