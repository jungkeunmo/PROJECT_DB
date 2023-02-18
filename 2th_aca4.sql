USE scott;

SELECT * FROM EMP;

SELECT	EMPNO,
		ENAME
  FROM  EMP
 WHERE  ENAME LIKE	'%C%';
 
-- 상급자별 부하직원이 총 몇명인지 구하세요.
-- 상급자 직원번호별 오름차순 정렬을 하세요.

SELECT 	MGR,
		COUNT(empno)		
  FROM	EMP
 GROUP	BY	MGR ;
 
-- 부서번호별 총 인원수를 구하세요. 
-- 단, 부서번호 별 오름차순 정렬하세요.

SELECT  DEPTNO,
		COUNT(empno)
  FROM  EMP
 GROUP	BY	DEPTNO
 ORDER 	BY 	DEPTNO	ASC;
 
-- JOIN
SELECT * FROM DEPT;
SELECT * FROM EMP;

SELECT	A.EMPNO,
		A.ENAME,
        A.DEPTNO,
        B.DNAME
 FROM	EMP		A
INNER
 JOIN	DEPT	B
   ON	A.DEPTNO = B.DEPTNO;
   
-- 부서명 별로 총 인원수가 몇명인지 조회하세요.
-- 부서번호, 부서명, 인원수 3가지를 출력하세요.
-- 서브쿼리

SELECT	Z.DNAME,
		COUNT(Z.EMPNO)
  FROM(
			SELECT	A.EMPNO,
					B.DNAME
			  FROM	EMP		A
			 INNER
			  JOIN	DEPT	B
				ON	A.DEPTNO = B.DEPTNO
	  )	  Z
 GROUP	BY	DNAME;
 
-- 이름에 F가 들어가는 사람의 사원번호, 사원명, 직급, 입사일, 부서번호, 부서명과 근무지를
-- 출력하세요.
-- 단, 이름을 기준으로 오름차순 정렬하세요.

SELECT	A.EMPNO,
		A.ENAME,
        A.JOB,
        A.HIREDATE,
        A.DEPTNO,
        B.DNAME,
        B.LOC
  FROM	EMP		A
 INNER
  JOIN 	DEPT	B
	ON	A.DEPTNO = B.DEPTNO
  WHERE A.ENAME  LIKE	'%F%'
 ORDER 	BY	A.ENAME 	ASC;

 

 
 
  

 

  