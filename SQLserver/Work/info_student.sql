
USE testDatabase
GO
/*
	增加student_xf列
ALTER TABLE info_student
ADD student_xf VARCHAR(10) NULL;
*/

/*
	删除student_xf列
ALTER TABLE info_student
DROP COLUMN student_xf	
*/

/*
SELECT student_bj AS 班级 , student_name AS 姓名
FROM info_student;
*/

/*
select *from info_student;

*/

/*
INSERT INTO info_student(student_name,student_bj,student_pwd,student_birth,student_xf)
VALUES('赵云','功夫2班',8615,'1976-07-15',90);
*/
/*
	LEFT 应用查询
SELECT * FROM info_student
WHERE LEFT (student_pwd,2)='12';
*/

/*
	根据学分判断是否合格
SELECT student_name,student_bj,等级=
	CASE	
		WHEN student_xf	<60 THEN '不及格'
		WHEN student_xf >=60 AND student_xf<=80 THEN '合格'
		ELSE '优秀'
		END
		FROM info_student;
*/

/*	
            根据出生日期计算年龄
SELECT student_name,student_bj,student_birth,YEAR(GETDATE())-year(student_birth)AS 年龄
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
	模糊查询
SELECT * FROM info_student 
WHERE student_name LIKE '刘%';
*/

/*

SELECT COUNT(DISTINCT student_name)AS 学号 FROM info_student;
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
SELECT student_name AS 姓名, student_bj AS 班级 
FROM info_student
WHERE student_pwd like '%2_[1-5]';
*/
/*
select * from info_student
*/
-- 浠ヤ笅鍧囦负娴嬭瘯鐢ㄤ緥

--  SELECT student_bj AS '鐝骇',濮撳悕=student_name  FROM info_student;

select * FROM info_student
WHERE student_mc='璁＄畻鏈轰笌杞欢瀛﹂櫌' AND student_xf<85
