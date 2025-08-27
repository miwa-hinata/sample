--4���� 1�Z
SELECT items.name AS"���i��",items.price AS"���i�P��",categories.name AS"�J�e�S����"
FROM items
INNER JOIN categories ON items.category_id=categories.id ; 
--2
CREATE TABLE customers(
id NUMBER(4) PRIMARY KEY,
name VARCHAR2(25CHAR) NOT NULL,
mail_address VARCHAR2(254) NOT NULL,
registration_date DATE DEFAULT SYSDATE NOT NULL,
update_date DATE DEFAULT SYSDATE NOT NULL
);

CREATE TABLE orders(
id NUMBER(5) PRIMARY KEY,
customer_id NUMBER(4),
item_id NUMBER(4),
quantity NUMBER(3) NOT NULL,
order_date DATE NOT NULL,
registration_date DATE DEFAULT SYSDATE,
update_date DATE DEFAULT SYSDATE,
FOREIGN KEY (customer_id) REFERENCES customers(id),
FOREIGN KEY (item_id) REFERENCES items(id)
);
--3�Z
INSERT INTO customers VALUES (1,'�c�����Y','t.tanaka@abc.jp',SYSDATE,SYSDATE);
INSERT INTO customers VALUES (2,'��؎��Y','j.suzuki@def.jp',SYSDATE,SYSDATE);
INSERT INTO customers VALUES (3,'�n�ӉԎq',' h.watanabe@ghi.jp',SYSDATE,SYSDATE);

INSERT INTO orders VALUES (1,1,2,3,'2023-10-12',SYSDATE,SYSDATE);
INSERT INTO orders VALUES (2,1,6,2,'2025-4-3',SYSDATE,SYSDATE);
INSERT INTO orders VALUES (3,3,5,1,'2025-3-15',SYSDATE,SYSDATE);
INSERT INTO orders VALUES (4,2,5,1,'2024-8-3',SYSDATE,SYSDATE);
INSERT INTO orders VALUES (5,2,1,1,'2024-8-3',SYSDATE,SYSDATE);
INSERT INTO orders VALUES (6,3,4,3,'2025-4-3',SYSDATE,SYSDATE);
COMMIT;
--4�Z
SELECT items.name AS "���i��",orders.quantity AS "������",orders.order_date AS"������"
FROM items 
LEFT OUTER JOIN orders ON items.id=orders.item_id;
COMMIT;
--5�Z
SELECT customers.name AS"�ڋq��",categories.name AS"�J�e�S����",items.name AS"���i��",orders.quantity AS"������"
FROM customers INNER JOIN orders ON customers.id = orders.customer_id
INNER JOIN items ON orders.item_id = items.id
INNER JOIN categories ON items.category_id = categories.id
WHERE category_id=2;