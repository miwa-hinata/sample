--7(1)
--���^�����ψȏ�̃f�[�^����������
SELECT AVG(sal)FROM emp;
--�T�u�N�G���̌��ʂ���o��
SELECT emp.empno,emp.ename,emp.sal
FROM emp
WHERE sal>=(SELECT AVG(sal)FROM emp);

--7(2)�m�F
SELECT empno,ename,job
FROM emp
WHERE job(SELECT job FROM emp GROUP BY job HAVING COUNT (*)>=2);

