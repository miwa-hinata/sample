SELECT * FROM drink;
--6(2)
SELECT d.drink_name AS "DRINKNAME",d.sel_price,dg.genre_name,dg.genre_id
FROM drink d INNER JOIN drink_genre dg
ON d.genre_id=dg.genre_id;
--6(3)
SELECT d.drink_name AS "DRINKNAME",d.sel_price,dg.genre_name,d.drink_id
FROM drink d 
LEFT OUTER JOIN drink_genre dg
ON d.genre_id=dg.genre_id;
--7.1(1)
CREATE TABLE book(  
book_id NUMBER(3) PRIMARY KEY,  
book_name VARCHAR2(40) NOT NULL,  
release_date DATE,  
sel_price NUMBER(4) NOT NULL 
); 
--7.1(2)
CREATE SEQUENCE book_id_seq START WITH 1 NOCACHE;
--7.1(3)
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'犬と僕の2000の約束','22-11-16',400);
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'初めてのJavaSilver','00-04-10',480);
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'おすすめの国内旅行','22-07-29',650);
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'クラウド基礎/応用','21-10-30',420);
--7.1(4)
DROP SEQUENCE book_id_seq;
--7.2(1)
CREATE SEQUENCE genre_id_seq NOCACHE; 

CREATE TABLE book_genre( 
genre_id NUMBER(3) PRIMARY KEY,  
genre_name VARCHAR2(40) NOT NULL 
); 

INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'絵本');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'技術');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'娯楽');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'ビジネス');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'音楽');  
COMMIT; 

ALTER TABLE book ADD genre_id NUMBER(3) REFERENCES book_genre(genre_id); 

DELETE FROM book; 

CREATE SEQUENCE book_id_seq NOCACHE; 

INSERT INTO book VALUES(book_id_seq.NEXTVAL,'犬と僕の 2000 の約束','2022/11/16',400,1);  
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'初めての JavaSilver','2000/04/10',480,2);  
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'おすすめの国内旅行','2022/07/29',650,3);  
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'クラウド基礎/応用','2021/10/30',420,2);  
COMMIT; 
--7.2(2)
/*
bookテーブルのgenre_idとbook_genreテーブルのgenre_id を結合キーとして
bookテーブルとbook_genreテーブルを内部結合したテーブルの中から
bookテーブルのbook_nameを検索する
*/

--7.2(3)