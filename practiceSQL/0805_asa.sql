--3日目　1
SELECT id,name,price *1.1 AS "商品価格（税込み）" FROM items;
--2
SELECT id,name,price FROM items WHERE price>=500;
--3
SELECT id,name,price,category_id FROM items WHERE category_id=2 AND price>=500;
--4
SELECT id,name,price,category_id FROM items WHERE category_id=2 OR price<=1000;
--5
SELECT id,name,price,category_id FROM items WHERE NOT category_id=2;
--6
SELECT id,name,price FROM items WHERE name LIKE '%セット';
--7
SELECT id,name,price FROM items WHERE name LIKE '%Java 入門%';
--8
SELECT id,name,price FROM items WHERE price BETWEEN 200 AND 500;
--9
SELECT id,name,price FROM items WHERE category_id IN(1,3);
--10
SELECT COUNT(*)AS "行数" FROM items WHERE category_id=2;
--11
SELECT SUM(price) AS "合計" FROM ITEMS WHERE category_id=3;
--12
SELECT AVG(price)AS "平均"FROM items WHERE category_id=2;
--13
SELECT MAX(price)AS "最大値" FROM items;
--14
SELECT MIN(price)AS "最小値" FROM items;
--15
SELECT category_id,AVG(price)AS"平均価格" FROM items GROUP BY category_id;
--16
SELECT category_id,AVG(price)AS "平均価格"  FROM items GROUP BY category_id HAVING AVG(price)>=3000;
--17
SELECT category_id,AVG(price)AS "平均価格" FROM items GROUP BY category_id ORDER BY category_id ASC;
--18
SELECT category_id,AVG(price)AS "平均価格" FROM items GROUP BY category_id ORDER BY category_id DESC;
COMMIT;