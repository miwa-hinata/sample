CREATE TABLE dept(
deptno VARCHAR2(2)PRIMARY KEY,
dname VARCHAR2(50)NOT NULL,
loc VARCHAR2(100)
);

CREATE TABLE emp(
empno VARCHAR2(3)PRIMARY KEY, --�Ј�NO
ename VARCHAR2(20)NOT NULL,�@�@--�Ј���
superior VARCHAR2(20),�@�@--��i
hiredate DATE NOT NULL,  --���Г�
sal NUMBER(10) NOT NULL,  --���^
job VARCHAR2(30),  --�E��
deptno VARCHAR2(2),  --����NO
/*
emp�e�[�u����deptno�ɐ���FOREIGN KEY���w�肵�Adept�e�[�u����deptno���Q�Ƃ���
*/
CONSTRAINT fk_deptno FOREIGN KEY(deptno)REFERENCES dept(deptno)
);

DROP TABLE emp;
DROP TABLE dept;

INSERT INTO dept VALUES ('01','�V�X�e�����{��','�����s�]����L�F 3-3-3'); 
INSERT INTO dept VALUES('02','�\�����[�V�������ƕ�','�_�ސ쌧���s������㏬�c��4-1-1');
INSERT INTO dept VALUES('03','�c�ƕ�','���{���s������錩1-4-24');
INSERT INTO dept VALUES('04','������',NULL);

INSERT INTO emp VALUES('001','��� �m',NULL,'2000/01/01',600000,'PL','01');
INSERT INTO emp VALUES('002','���� �K��','��� �m','2000/03/22',350000,'�u���b�WSE','01');
INSERT INTO emp VALUES('003','���� �ЂƂ�',NULL,'2000/01/01',500000,'PL','02');
INSERT INTO emp VALUES('004','��O �v','��� �m','2000/04/01',320000,'SE','01');
INSERT INTO emp VALUES('005','�^�c ���V','��� �m','2001/04/01',300000,'SE','01');
INSERT INTO emp VALUES('006','��� ��','��� �m','2001/04/01',300000,'SE','01');
INSERT INTO emp VALUES('007','�_�� �w','���� �ЂƂ�','2001/04/01',280000,'PG','02');
INSERT INTO emp VALUES('008','���� ��','���� �ЂƂ�','2002/04/01',280000,'PG','02');
INSERT INTO emp VALUES('009','���� ��','���� �ЂƂ�','2003/04/01',260000,'PG','02');
INSERT INTO emp VALUES('010','���R �_','���� �ЂƂ�','2006/04/01',180000,'�f�U�C�i�[','02');

COMMIT;