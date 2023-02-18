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
  
  
  