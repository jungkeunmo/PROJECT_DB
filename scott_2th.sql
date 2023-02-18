USE scott;

SELECT A.EMPNO,
	   A.ENAME,
       A.JOB,
	   DATE_FORMAT(A.HIREDATE, '%Y-%m-%d') AS HIREDATE,
       A.SAL,
       B.DNAME,
       B.LOC
 FROM  EMP		A
INNER	
 JOIN  DEPT		B
   ON  A.DEPTNO = B.DEPTNO
ORDER	BY	A.EMPNO	 ASC;   

SELECT * FROM DEPT;

SHOW tables;

CREATE TABLE HOBBY (
	id			INT 		NOT NULL		PRIMARY KEY		AUTO_INCREMENT,
    value		VARCHAR(50)	NOT NULL,
    createAt	DATETIME
);

SELECT * FROM HOBBY;

-- someDrink 라는 데이터베이스를 만들고,
-- drinks라는 테이블을 생성한다. 테이블은 pk인 id와
-- name(문자열), price(정수형), createAt(날짜형), size(문자형) 으로 이루어져있다.alter

-- "/" 화면에 drink 데이터를 보여주는 테이블과
-- "/create" 화면에는 drink를 추가할 수 있는 화면과 기능을 개발하세요.

-- "/" 화면에서는 "/create" 화면으로 이동할수있어야 하며, 
-- "/craete" 화면에서는 "/" 화면으로 이동할수 있어야 한다.

 







