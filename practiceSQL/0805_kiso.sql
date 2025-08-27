--8(1)
SELECT COUNT(*)AS"行数" FROM emp;
--8(2)
SELECT MAX(sal)AS"給与(最大値)",MIN(sal)AS"給与(最小値)",SUM(sal)AS"給与(合計値)"
FROM emp;
--9
SELECT job,COUNT(*)AS"行数"
FROM emp
GROUP BY job;
--10(1)
SELECT empno,ename
FROM emp
ORDER BY empno DESC;
--10(2)
SELECT deptno,ename,sal
FROM emp 
ORDER BY deptno ,sal DESC;
--11(1)
SELECT emp.empno,emp.ename,dept.dname
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno;
--11(2)
SELECT emp.empno,emp.ename,dept.dname
FROM dept LEFT OUTER JOIN emp
ON emp.deptno=dept.deptno;