CREATE TABLE employee ( 
  emp_id NUMBER(4) PRIMARY KEY, 
  emp_name VARCHAR2(30 CHAR) NOT NULL, 
  gender NUMBER(1) NOT NULL, 
  birthday DATE 
); 
 
-- �e�[�u���쐬��A�e�e�[�u���ɓ���e�X�g�p���R�[�h��}������B 
INSERT INTO employee VALUES (1,'�R�c���Y',1,'2009/09/09'); 
INSERT INTO employee VALUES (2,'�c������',1,'2008/03/09'); 
INSERT INTO employee VALUES (3,'��؉Ԏq',2,'2010/11/20'); 
 
COMMIT; 