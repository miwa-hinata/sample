drop SEQUENCE seq_emp;
drop table employee;
drop table department;

CREATE TABLE department  (
  dept_id NUMBER(1) PRIMARY KEY,
  dept_name VARCHAR2(30 CHAR) NOT NULL
);


CREATE TABLE employee (
  emp_id NUMBER(4) PRIMARY KEY,
  emp_name VARCHAR2(30 CHAR) NOT NULL,
  gender NUMBER(1) DEFAULT 0 NOT NULL,
  birthday DATE NOT NULL,
  dept_id NUMBER(1) NOT NULL REFERENCES department(dept_id)
);

CREATE SEQUENCE seq_emp NOCACHE;

INSERT INTO department VALUES (1,'�c�ƕ�');
INSERT INTO department VALUES (2,'�o����');
INSERT INTO department VALUES (3,'������');

INSERT INTO employee VALUES (seq_emp.NEXTVAL, '��ؑ��Y', 1, '1986/10/12', 1);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '�c����Y', 1, '1979/07/02', 2);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '�n�ӉԎq', 2, '1988/04/23', 2);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '�O�Y�O', 0, '2004/11/09', 2);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '�ԎR���', 9, '2010/12/30', 1);


COMMIT;

SELECT * FROM employee;
