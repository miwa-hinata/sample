--FROM��̒��̃T�u�N�G��
SELECT shop_id,shop_name,item_id,item_name,sel_price,quantity
FROM(SELECT si.shop_id,si.shop_name,si.item_id,i.item_name,i.sel_price,si.quantity
FROM shop_item si 
INNER JOIN item i ON si.item_id=i.item_id);
--�T�u�N�G���̕����������s
SELECT si.shop_id,si.shop_name,si.item_id,i.item_name,i.sel_price,si.quantity
FROM shop_item si 
INNER JOIN item i ON si.item_id=i.item_id;


--IN����g�p�����T�u�N�G��
SELECT * FROM shop_item WHERE item_id IN(SELECT item_id FROM item WHERE sel_price<=3000);
--�T�u�N�G�������������s
SELECT item_id FROM item WHERE sel_price<=3000;
--�T���v���R�[�h�Ɠ����Ӗ��̃R�[�h
SELECT * FROM shop_item WHERE item_id IN(0001,0002,0004,0007);


--�T�u�N�G���̐U��Ԃ���i�O���[�v�j
SELECT employees.last_name,salaly
FROM employees
WHERE salary >
(SELECT AVG(salary)FROM employees WHERE depaetment_id=10);

--148�y�[�W
CREATE SEQUENCE seq_dept
START WITH 5
NOCACHE;
--149�y�[�W
INSERT INTO dept VALUES(seq_dept.NEXTVAL,'�l����');
COMMIT;
SELECT dept_id,dept_name FROM dept;
--���R�[�h�폜
DELETE FROM dept WHERE dept_id=5;
SELECT * FROM dept;
INSERT INTO dept VALUES(seq_dept.NEXTVAL,'�J����');
COMMIT;
SELECT * FROM dept;