USE testDatabase
GO
/*
CREATE TABLE info_teacher(
	teacher_id int NOT NULL,
	teacher_jgh varchar not null,
	teacher_login varchar null,
	teacher_xm varchar not null,
	teacher_password varchar null,
	dept_dm varchar null
	
);
*/

/*
SELECT * from info_teacher;
*/

/*
INSERT INTO info_teacher(teacher_id,teacher_jgh,teacher_login,teacher_xm,teacher_password,dept_dm)
VALUES(8116,2008100235,'2008100235A','������','94B6619',2242);*/
/*
SELECT * FROM info_teacher
WHERE LEFT(teacher_jgh,4)='2008';
*/
/*
SELECT * FROM info_teacher
WHERE LEFT(teacher_jgh,4) IN ('1996','2008');
*/
/*
SELECT * FROM info_teacher
WHERE teacher_id BETWEEN 8000 AND 8815;
*/
/*
	
SELECT *FROM info_teacher
WHERE teacher_xm like '��_';
*/

/*

SELECT * FROM info_teacher
WHERE teacher_xm LIKE '��%';
*/
/*

SELECT * FROM info_teacher
WHERE LEFT(teacher_login,4)='2008' AND teacher_xm Like '��%';
*/
/*
  
   SELECT * FROM info_teacher
 WHERE teacher_password IS NULL; 
 */
 /*
 
SELECT * FROM info_teacher
ORDER BY teacher_id DESC ����
SELECT * FROM info_teacher
ORDER BY teacher_id ASC ����
*/

-- select student_mc AS 院系名称,COUNT(distinct student_bj)AS 专业个数
-- from info_student
-- GROUP BY student_mc

-- select student_name,student_bj
-- from info_student
-- where student_xf>=85 and student_xf<=90


--以下均为用例测试

--  select *FROM info_teacher; 
-- 

-- SELECT teacher_jgh,teacher_xm
-- FROM info_teacher
-- WHERE LEFT(teacher_jgh,4)IN(1996,2008)

-- select teacher_jgh,teacher_xm
--  FROM info_teacher
-- WHERE teacher_id BETWEEN 8000 AND 8500
-- 
-- 
-- SELECT*FROM info_teacher
-- ORDER BY teacher_id ASC
