--7(1)
--給与が平均以上のデータを検索する
SELECT AVG(sal)FROM emp;
--サブクエリの結果から出力
SELECT emp.empno,emp.ename,emp.sal
FROM emp
WHERE sal>=(SELECT AVG(sal)FROM emp);

--7(2)確認
SELECT empno,ename,job
FROM emp
WHERE job(SELECT job FROM emp GROUP BY job HAVING COUNT (*)>=2);

