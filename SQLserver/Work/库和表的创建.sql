 /*
CREATE DATABASE admin
 GO
 CREATE TABLE student_admin(
 student_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 student_xm VARCHAR NOT NULL
);
 GO的使用，分批操作，上一条执行的不影响下一条的语句
CREATE DATABASE admin
*/
select *from student_admin

CREATE DATABASE my_test
GO
CREATE TABLE tb_student(
	userId INT NOT NULL IDENTITY(1,1),
	userName VARCHAR NOT NULL,
	password VARCHAR NOT NULL
);