SELECT deptno,dname,loc FROM dept;

DROP TABLE dept;

DELETE FROM dept WHERE deptno='04';

INSERT INTO dept(deptno,dname,loc) VALUES('04','������','NULL');
COMMIT;

DELETE FROM dept WHERE deptno='04';
INSERT INTO dept(deptno,dname,loc) VALUES('04','������',NULL);
COMMIT;

SELECT deptno,dname,loc FROM dept;

SELECT ename,superior,hiredate FROM emp;

SELECT deptno,dname,loc FROM dept WHERE deptno='02';

SELECT empno,ename,hiredate,job FROM emp WHERE job='PG';
--��5(1)
UPDATE dept SET dname='�l����' WHERE deptno='04';
COMMIT;
--��5(2)
UPDATE emp SET superior='��� �m',sal=290000,job='SE',deptno='01';
ROLLBACK;
UPDATE emp SET superior = '��� �m', job = 'SE', sal = 290000, deptno = '01' WHERE empno = '008'; 
COMMIT;
UPDATE emp SET superior='��� �m',sal=290000,job='SE',deptno='01';
--��6(1)
DELETE FROM emp WHERE empno='006';
COMMIT;
--��7(1)