--1(1)
CREATE TABLE dept(
deptno VARCHAR2(2) PRIMARY KEY,
dname VARCHAR2(50) NOT NULL,
loc VARCHAR2(100)
);
--1(2)
CREATE TABLE emp(
empno VARCHAR2(3) PRIMARY KEY, --社員NO
ename VARCHAR2(20) NOT NULL,　--社員名
superior VARCHAR2(20), --上司
hiredate DATE NOT NULL, --入社日
sal NUMBER NOT NULL, --給与
job VARCHAR2(30), --職種
deptno VARCHAR2(20), --部署NO
/*
部署テーブルのdeptnoカラムに外部参照制約する制約を制約名fk_deptnoで付加する
*/
CONSTRAINT fk_deptno FOREIGN KEY(deptno)REFERENCES dept(deptno)
);
--基礎問題から
INSERT INTO dept VALUES ('01','システム企画本部','東京都江東区豊洲 3-3-3'); 
INSERT INTO dept VALUES ('02','ソリューション事業部','神奈川県川崎市中原区上小田中 4-1-1'); 
INSERT INTO dept VALUES ('03','営業部','大阪府大阪市中央区城見 1-4-24'); 
INSERT INTO dept VALUES ('04','総務部',NULL); 
COMMIT; 

INSERT INTO emp VALUES ('001', '鈴木 仁', NULL, '2000/01/01', 600000,'PL', '01'); 
INSERT INTO emp VALUES ('002','佐藤 幸助','鈴木 仁','2000/03/22',350000,'ブリッジ SE','01'); 
INSERT INTO emp VALUES ('003', '高橋 ひとみ', NULL, '2000/01/01', 500000,'PL', '02'); 
INSERT INTO emp VALUES ('004', '大前 貢', '鈴木 仁', '2000/04/01', 320000,'SE', '01'); 
INSERT INTO emp VALUES ('005', '真田 博之', '鈴木 仁', '2001/04/01',300000, 'SE', '01'); 
INSERT INTO emp VALUES ('006', '大城 勉', '鈴木 仁', '2001/04/01', 300000,'SE', '01'); 
INSERT INTO emp VALUES ('007', '神城 陣', '高橋 ひとみ', '2001/04/01',280000, 'PG', '02'); 
INSERT INTO emp VALUES ('008', '結城 瞳', '高橋 ひとみ', '2002/04/01',280000, 'PG', '02'); 
INSERT INTO emp VALUES ('009', '博多 弁', '高橋 ひとみ', '2003/04/01',260000, 'PG', '02'); 
INSERT INTO emp VALUES ('010', '小山 浩', '高橋 ひとみ', '2006/04/01',180000, 'デザイナー', '02'); 
COMMIT; 
--2(1)
SELECT ename AS"社員名",superior AS"上司",sal AS"給与"
FROM emp;
--2(2)
SELECT DISTINCT job FROM emp;
--3(1)
INSERT INTO dept (deptno,dname,loc) VALUES('20','経理部','Redmond,WA 98052-7329 USA ');
INSERT INTO dept (deptno,dname,loc) VALUES('21','水産食品開発部',NULL);
INSERT INTO dept (deptno,dname,loc) VALUES('22','食品総合研究所',NULL);
ROLLBACK;
--3(2)
INSERT INTO dept (deptno,dname,loc) VALUES('20','経理部','Redmond,WA 98052-7329 USA ');
INSERT INTO dept (deptno,dname,loc) VALUES('21','水産食品開発部',NULL);
INSERT INTO dept (deptno,dname,loc) VALUES('22','食品総合研究所',NULL);
DELETE FROM dept WHERE deptno='21';
DELETE FROM dept WHERE deptno='22';
SAVEPOINT a;
DELETE FROM dept WHERE deptno='20';
--3(2)の解答
INSERT INTO dept VALUES ('20','経理部','Redmond, WA 98052-7329 USA');
SAVEPOINT sp1; 
INSERT INTO dept VALUES ('21','水産食品開発部',NULL); 
INSERT INTO dept VALUES ('22','食品総合研究所',NULL);  
ROLLBACK TO sp1; 
COMMIT; 
--4(1)
SELECT MAX(hiredate) AS"入社日" FROM emp;
--5(1)
SELECT superior,COUNT(*)AS"行数"
FROM emp
WHERE superior IS NOT NULL
GROUP BY superior;
--5(2)
SELECT job,AVG(sal)AS"平均給与"
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
INSERT INTO plan VALUES('0001','001','2007/02/03','14 時から A 社様との面談');
INSERT INTO plan VALUES('0002','003',' 2007/02/03','大阪出張');
INSERT INTO plan VALUES('0003','003','2007/02/05','大阪出張');
INSERT INTO plan VALUES('0004','001',' 2007/02/04',' 9 時 30 分から進捗報告会');
INSERT INTO plan VALUES('0005','001','2007/02/06','18 時から経営会議');
COMMIT;
--6(3)
SELECT plan.planno,plan.SCHEDULED_DATE,plan.plan,emp.empno,emp.ename,dept.dname
FROM emp 
INNER JOIN dept ON emp.deptno=dept.deptno
INNER JOIN plan ON emp.empno=plan.empno
ORDER BY plan.planno;
--6(4)
SELECT plan.empno,emp.ename,dept.dname,COUNT(*)AS"件数"
FROM emp
INNER JOIN plan ON emp.empno=plan.empno
INNER JOIN dept ON emp.deptno=dept.deptno
GROUP BY plan.empno,emp.ename,dept.dname
ORDER BY plan.empno;