--1
SELECT * FROM categories;
--2
SELECT * FROM items;
--3
SELECT category_id FROM items;
--4
SELECT DISTINCT CATEGORY_ID FROM items;
--5
SELECT id,name,price FROM items WHERE price=340;
--6
SELECT id,name FROM categories WHERE name='菓子類';
--7、見直し
UPDATE items SET price=3480 WHERE CATEGORY_ID='3';
COMMIT;
SELECT * FROM items;
UPDATE items SET price = 3480, update_date = SYSDATE WHERE id = 3;
UPDATE items SET price = 3480, update_date = SYSDATE WHERE id = 5;
COMMIT;
SELECT * FROM items;
--8
DELETE FROM categories WHERE id=4;
SELECT * FROM categories;
--9
UPDATE items SET name='カラー水性ペン 3 色セット' WHERE id=4;
SELECT * FROM items;
ROLLBACK;
--10
INSERT INTO items VALUES(6,'スティックのり',180,SYSDATE,SYSDATE,2);
SAVEPOINT items_save;
UPDATE items SET price=240,registration_date='2025/08/01' WHERE id=6;
ROLLBACK TO items_save;
COMMIT;

