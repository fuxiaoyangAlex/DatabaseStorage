
USE testDatabase
GO
/*
	����student_xf��
ALTER TABLE info_student
ADD student_xf VARCHAR(10) NULL;
*/

/*
	ɾ��student_xf��
ALTER TABLE info_student
DROP COLUMN student_xf	
*/

/*
SELECT student_bj AS �༶ , student_name AS ����
FROM info_student;
*/

/*
select *from info_student;

*/

/*
INSERT INTO info_student(student_name,student_bj,student_pwd,student_birth,student_xf)
VALUES('����','����2��',8615,'1976-07-15',90);
*/
/*
	LEFT Ӧ�ò�ѯ
SELECT * FROM info_student
WHERE LEFT (student_pwd,2)='12';
*/

/*
	����ѧ���ж��Ƿ�ϸ�
SELECT student_name,student_bj,�ȼ�=
	CASE	
		WHEN student_xf	<60 THEN '������'
		WHEN student_xf >=60 AND student_xf<=80 THEN '�ϸ�'
		ELSE '����'
		END
		FROM info_student;
*/

/*	
            ���ݳ������ڼ�������
SELECT student_name,student_bj,student_birth,YEAR(GETDATE())-year(student_birth)AS ����
FROM info_student;
*/

/*
SELECT *from info_student;
*/

/*
SELECT *FROM info_student
WHERE LEFT(student_xh,4)='1803';
*/
/*
	ģ����ѯ
SELECT * FROM info_student 
WHERE student_name LIKE '��%';
*/

/*

SELECT COUNT(DISTINCT student_name)AS ѧ�� FROM info_student;
*/

/*
ALTER TABLE info_student
ADD student_zy VARCHAR(20) NULL;
*/
/*
ALTER TABLE info_student
DROP COLUMN student_zy;
*/

/*
SELECT student_name AS ����, student_bj AS �༶ 
FROM info_student
WHERE student_pwd like '%2_[1-5]';
*/
/*
select * from info_student
*/
-- 以下均为测试用例

--  SELECT student_bj AS '班级',姓名=student_name  FROM info_student;

select * FROM info_student
WHERE student_mc='计算机与软件学院' AND student_xf<85
