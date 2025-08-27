SELECT deptno,dname,loc FROM dept;

DROP TABLE dept;

DELETE FROM dept WHERE deptno='04';

INSERT INTO dept(deptno,dname,loc) VALUES('04','ëçñ±ïî','NULL');
COMMIT;

DELETE FROM dept WHERE deptno='04';
INSERT INTO dept(deptno,dname,loc) VALUES('04','ëçñ±ïî',NULL);
COMMIT;

SELECT deptno,dname,loc FROM dept;

SELECT ename,superior,hiredate FROM emp;

SELECT deptno,dname,loc FROM dept WHERE deptno='02';

SELECT empno,ename,hiredate,job FROM emp WHERE job='PG';
--ñ‚5(1)
UPDATE dept SET dname='êléñïî' WHERE deptno='04';
COMMIT;
--ñ‚5(2)
UPDATE emp SET superior='óÈñÿ êm',sal=290000,job='SE',deptno='01';
ROLLBACK;
UPDATE emp SET superior = 'óÈñÿ êm', job = 'SE', sal = 290000, deptno = '01' WHERE empno = '008'; 
COMMIT;
UPDATE emp SET superior='óÈñÿ êm',sal=290000,job='SE',deptno='01';
--ñ‚6(1)
DELETE FROM emp WHERE empno='006';
COMMIT;
--ñ‚7(1)