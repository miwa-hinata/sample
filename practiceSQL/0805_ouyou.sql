--1(1)
CREATE TABLE dept(
deptno VARCHAR2(2) PRIMARY KEY,
dname VARCHAR2(50) NOT NULL,
loc VARCHAR2(100)
);
--1(2)
CREATE TABLE emp(
empno VARCHAR2(3) PRIMARY KEY, --�Ј�NO
ename VARCHAR2(20) NOT NULL,�@--�Ј���
superior VARCHAR2(20), --��i
hiredate DATE NOT NULL, --���Г�
sal NUMBER NOT NULL, --���^
job VARCHAR2(30), --�E��
deptno VARCHAR2(20), --����NO
/*
�����e�[�u����deptno�J�����ɊO���Q�Ɛ��񂷂鐧��𐧖�fk_deptno�ŕt������
*/
CONSTRAINT fk_deptno FOREIGN KEY(deptno)REFERENCES dept(deptno)
);
--��b��肩��
INSERT INTO dept VALUES ('01','�V�X�e�����{��','�����s�]����L�F 3-3-3'); 
INSERT INTO dept VALUES ('02','�\�����[�V�������ƕ�','�_�ސ쌧���s������㏬�c�� 4-1-1'); 
INSERT INTO dept VALUES ('03','�c�ƕ�','���{���s������錩 1-4-24'); 
INSERT INTO dept VALUES ('04','������',NULL); 
COMMIT; 

INSERT INTO emp VALUES ('001', '��� �m', NULL, '2000/01/01', 600000,'PL', '01'); 
INSERT INTO emp VALUES ('002','���� �K��','��� �m','2000/03/22',350000,'�u���b�W SE','01'); 
INSERT INTO emp VALUES ('003', '���� �ЂƂ�', NULL, '2000/01/01', 500000,'PL', '02'); 
INSERT INTO emp VALUES ('004', '��O �v', '��� �m', '2000/04/01', 320000,'SE', '01'); 
INSERT INTO emp VALUES ('005', '�^�c ���V', '��� �m', '2001/04/01',300000, 'SE', '01'); 
INSERT INTO emp VALUES ('006', '��� ��', '��� �m', '2001/04/01', 300000,'SE', '01'); 
INSERT INTO emp VALUES ('007', '�_�� �w', '���� �ЂƂ�', '2001/04/01',280000, 'PG', '02'); 
INSERT INTO emp VALUES ('008', '���� ��', '���� �ЂƂ�', '2002/04/01',280000, 'PG', '02'); 
INSERT INTO emp VALUES ('009', '���� ��', '���� �ЂƂ�', '2003/04/01',260000, 'PG', '02'); 
INSERT INTO emp VALUES ('010', '���R �_', '���� �ЂƂ�', '2006/04/01',180000, '�f�U�C�i�[', '02'); 
COMMIT; 
--2(1)
SELECT ename AS"�Ј���",superior AS"��i",sal AS"���^"
FROM emp;
--2(2)
SELECT DISTINCT job FROM emp;
--3(1)
INSERT INTO dept (deptno,dname,loc) VALUES('20','�o����','Redmond,WA 98052-7329 USA ');
INSERT INTO dept (deptno,dname,loc) VALUES('21','���Y�H�i�J����',NULL);
INSERT INTO dept (deptno,dname,loc) VALUES('22','�H�i����������',NULL);
ROLLBACK;
--3(2)
INSERT INTO dept (deptno,dname,loc) VALUES('20','�o����','Redmond,WA 98052-7329 USA ');
INSERT INTO dept (deptno,dname,loc) VALUES('21','���Y�H�i�J����',NULL);
INSERT INTO dept (deptno,dname,loc) VALUES('22','�H�i����������',NULL);
DELETE FROM dept WHERE deptno='21';
DELETE FROM dept WHERE deptno='22';
SAVEPOINT a;
DELETE FROM dept WHERE deptno='20';
--3(2)�̉�
INSERT INTO dept VALUES ('20','�o����','Redmond, WA 98052-7329 USA');
SAVEPOINT sp1; 
INSERT INTO dept VALUES ('21','���Y�H�i�J����',NULL); 
INSERT INTO dept VALUES ('22','�H�i����������',NULL);  
ROLLBACK TO sp1; 
COMMIT; 
--4(1)
SELECT MAX(hiredate) AS"���Г�" FROM emp;
--5(1)
SELECT superior,COUNT(*)AS"�s��"
FROM emp
WHERE superior IS NOT NULL
GROUP BY superior;
--5(2)
SELECT job,AVG(sal)AS"���ϋ��^"
FROM emp
GROUP BY job;
--6(1)
CREATE TABLE plan(
planno VARCHAR2(4) PRIMARY KEY,
empno VARCHAR2(3) REFERENCES emp(empno),
scheduled_date DATE NOT NULL,
plan VARCHAR2(200) NOT NULL
); 
--6(2)
INSERT INTO plan VALUES('0001','001','2007/02/03','14 ������ A �Зl�Ƃ̖ʒk');
INSERT INTO plan VALUES('0002','003',' 2007/02/03','���o��');
INSERT INTO plan VALUES('0003','003','2007/02/05','���o��');
INSERT INTO plan VALUES('0004','001',' 2007/02/04',' 9 �� 30 ������i���񍐉�');
INSERT INTO plan VALUES('0005','001','2007/02/06','18 ������o�c��c');
COMMIT;
--6(3)
SELECT plan.planno,plan.SCHEDULED_DATE,plan.plan,emp.empno,emp.ename,dept.dname
FROM emp 
INNER JOIN dept ON emp.deptno=dept.deptno
INNER JOIN plan ON emp.empno=plan.empno
ORDER BY plan.planno;
--6(4)
SELECT plan.empno,emp.ename,dept.dname,COUNT(*)AS"����"
FROM emp
INNER JOIN plan ON emp.empno=plan.empno
INNER JOIN dept ON emp.deptno=dept.deptno
GROUP BY plan.empno,emp.ename,dept.dname
ORDER BY plan.empno;