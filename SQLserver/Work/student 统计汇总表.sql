USE testDatabase
GO
-- select * FROM info_student;


/*
SELECT COUNT(DISTINCT student_mc) AS Ժϵ��Ŀ
FROM info_student;
*/

/*
根据院系分类，查看每个院系开设几个专业
SELECT student_mc AS 院系名称,COUNT(DISTINCT student_bj) AS 开设的专业数目
FROM info_student 
GROUP 
*/


/*
select *from info_student;
*/

/*
ALTER TABLE info_student
ADD rxnj VARCHAR(20) NULL;
*/


-- SELECT student_rxnj AS 入学年份
-- FROM info_student;


 
--  SELECT  student_name,student_rxnj,student_bj,student_mc
--  FROM info_student
--  WHERE student_mc='计算机与软件学院' AND student_rxnj=2017
--  COMPUTE COUNT(student_bj);


/*
SELECT *FROM info_student
ORDER BY student_rxnj ASC
*/


/*
  将一个表的数据插入到另一个表
 	INSERT INTO student_rj1731	
	SELECT * FROM info_student
 	WHERE student_rxnj='2017' AND student_mc='计算机与软件学院'
*/

-- 	SELECT * FROM student_rj1731;
