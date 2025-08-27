--FROM句の中のサブクエリ
SELECT shop_id,shop_name,item_id,item_name,sel_price,quantity
FROM(SELECT si.shop_id,si.shop_name,si.item_id,i.item_name,i.sel_price,si.quantity
FROM shop_item si 
INNER JOIN item i ON si.item_id=i.item_id);
--サブクエリの部分だけ実行
SELECT si.shop_id,si.shop_name,si.item_id,i.item_name,i.sel_price,si.quantity
FROM shop_item si 
INNER JOIN item i ON si.item_id=i.item_id;


--IN句を使用したサブクエリ
SELECT * FROM shop_item WHERE item_id IN(SELECT item_id FROM item WHERE sel_price<=3000);
--サブクエリ部分だけ実行
SELECT item_id FROM item WHERE sel_price<=3000;
--サンプルコードと同じ意味のコード
SELECT * FROM shop_item WHERE item_id IN(0001,0002,0004,0007);


--サブクエリの振り返り問題（グループ）
SELECT employees.last_name,salaly
FROM employees
WHERE salary >
(SELECT AVG(salary)FROM employees WHERE depaetment_id=10);

--148ページ
CREATE SEQUENCE seq_dept
START WITH 5
NOCACHE;
--149ページ
INSERT INTO dept VALUES(seq_dept.NEXTVAL,'人事部');
COMMIT;
SELECT dept_id,dept_name FROM dept;
--レコード削除
DELETE FROM dept WHERE dept_id=5;
SELECT * FROM dept;
INSERT INTO dept VALUES(seq_dept.NEXTVAL,'開発部');
COMMIT;
SELECT * FROM dept;