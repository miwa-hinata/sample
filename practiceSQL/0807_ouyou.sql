---�ė��K�@4(1)
SELECT MAX(hiredate) AS"���Г�" FROM emp;
--5(1)
SELECT superior,COUNT(*)AS"�s��" FROM emp WHERE superior IS NOT NULL GROUP BY superior;
--5(2)
SELECT job,AVG(sal)AS"���ϋ��^"
FROM emp
GROUP BY job;
--6(3)
SELECT plan.planno,plan.SCHEDULED_DATE,plan.plan,emp.empno,emp.ename,dept.dname
FROM plan 
INNER JOIN emp ON plan.empno=emp.empno
INNER JOIN dept ON emp.deptno=dept.deptno
ORDER BY plan.planno ASC;
--6(4)
SELECT emp.empno,emp.ename,dept.dname,COUNT(*)AS"����"
FROM emp 
INNER JOIN plan ON emp.empno=plan.empno
GROUP BY plan.empno,emp.ename,dept.dname
ORDER BY plan.empno;
COMMIT;






