SHOW databases;

CREATE DATABASE aca;

SHOW databases;

USE aca;

SHOW tables;

CREATE TABLE students (
	id		INT			NOT NULL	PRIMARY KEY		AUTO_INCREMENT,
    name	VARCHAR(20) NOT NULL,
    birth	DATE		NOT NULL,
    gender	VARCHAR(10) NOT NULL,
    school	VARCHAR(100)NOT NULL,
    hobby	VARCHAR(30)
);

SHOW tables;

DESC students;

INSERT INTO students (
	name,
    birth,
    gender,
    school,
    hobby
) VALUES (
	"정근모",
    STR_TO_DATE("2007-02-03", "%Y-%m-%d"),
    "MALE",
    "공주이인중학교",
    "사람이기"
);


SELECT * FROM students;


SELECT id,
	   name,
       birth,
       gender,
       school,
       hobby
  FROM	students;
  
-- 학생들의 이름과 성별만 알고싶어요.

SELECT name,
       gender
  FROM students;
  
-- 학생들의 번호와 이름, 학교를 가져오세요.
-- 단, 이름순 오름차순으로 정렬하세요.

SELECT id,
	   name,
       school
  FROM students
 ORDER BY	name	ASC; -- 내림차순은 DESC로 사용한다.
 
-- 공주여자중학교에 다니는 학생들의 이름과 생년월일, 성별을 알고싶어요
-- 단, 이름순으로 오름차순 정렬하세요.

SELECT name,
	   birth,
       gender
  FROM students
 WHERE school = "공주여자중학교" 
 ORDER BY	name	ASC;
 
 
-- 성별이 남성(MALE)인 학생들의 아이디와 이름, 학교와 취미를 알고싶어요.
-- 단, id를 기준으로 오름차순 정렬하세요.

SELECT id, 
	   name,
       school,
       hobby
  FROM students 
  WHERE gender = "MALE"
  ORDER BY	name	ASC;
        
-- 모든 학생들의 이름과 학교, 생년월일, 그리고 나이를 구하시오
-- 단, id를 기준으로 오름차순 정렬하세요.        
        
SELECT NOW()
  FROM DUAL;
  
SELECT  name,
		school,
        birth,
		CONCAT(DATE_FORMAT(NOW(), '%Y-%m-%d') - DATE_FORMAT(birth, '%Y-%m-%d'), "세") AS age
  FROM  students
 ORDER	BY	id	ASC;
  
  
 








