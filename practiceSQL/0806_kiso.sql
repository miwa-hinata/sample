--12(1)
CREATE SEQUENCE dept_seq 
START WITH 10
INCREMENT BY 1;
--12(2)
INSERT INTO dept VALUES(dept_seq.NEXTVAL,'�o�c������','Redmond, WA 98052-7329 USA');
INSERT INTO dept VALUES(dept_seq.NEXTVAL,'�l�b�g���[�N���ƕ�',NULL);
COMMIT;