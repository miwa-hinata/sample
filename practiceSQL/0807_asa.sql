--5���� 1
SELECT name,quantity,order_date
FROM
(SELECT items.name,orders.quantity,orders.order_date 
FROM items INNER JOIN orders ON items.id=orders.item_id);
--2
SELECT name,quantity,order_date
FROM items INNER JOIN orders ON items.id=orders.item_id
WHERE price<(SELECT MAX(price)FROM items);
--3
CREATE SEQUENCE seq_item
START WITH 7
NOCACHE;
--4
INSERT INTO items VALUES(seq_item.NEXTVAL,'�~���N�`���R���[�g�i15����j',270,SYSDATE,SYSDATE,1);
--5
SELECT customers.id AS "�ڋqID",customers.name AS"�ڋq��",items.price AS"���v"
FROM customers INNER JOIN orders 
ON customers.id=orders.customer_id
INNER JOIN items ON orders.item_id=items.id
WHERE price>(SELECT AVG(price)FROM items);
COMMIT;
