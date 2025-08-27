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
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'���Ɩl��2000�̖�','22-11-16',400);
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'���߂Ă�JavaSilver','00-04-10',480);
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'�������߂̍������s','22-07-29',650);
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'�N���E�h��b/���p','21-10-30',420);
--7.1(4)
DROP SEQUENCE book_id_seq;
--7.2(1)
CREATE SEQUENCE genre_id_seq NOCACHE; 

CREATE TABLE book_genre( 
genre_id NUMBER(3) PRIMARY KEY,  
genre_name VARCHAR2(40) NOT NULL 
); 

INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'�G�{');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'�Z�p');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'��y');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'�r�W�l�X');  
INSERT INTO book_genre VALUES(genre_id_seq.NEXTVAL,'���y');  
COMMIT; 

ALTER TABLE book ADD genre_id NUMBER(3) REFERENCES book_genre(genre_id); 

DELETE FROM book; 

CREATE SEQUENCE book_id_seq NOCACHE; 

INSERT INTO book VALUES(book_id_seq.NEXTVAL,'���Ɩl�� 2000 �̖�','2022/11/16',400,1);  
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'���߂Ă� JavaSilver','2000/04/10',480,2);  
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'�������߂̍������s','2022/07/29',650,3);  
INSERT INTO book VALUES(book_id_seq.NEXTVAL,'�N���E�h��b/���p','2021/10/30',420,2);  
COMMIT; 
--7.2(2)
/*
book�e�[�u����genre_id��book_genre�e�[�u����genre_id �������L�[�Ƃ���
book�e�[�u����book_genre�e�[�u����������������e�[�u���̒�����
book�e�[�u����book_name����������
*/

--7.2(3)