SHOW databases;

USE aca;

SHOW tables;

USE scott;

SHOW tables;

SELECT * FROM bonus;
SELECT * FROM dept;
SELECT * FROM emp;
SELECT * FROM salgrade;

-- 직원들의 직원번호, 이름, 급여, 입사일을 출력하세요.
-- 단, 직원번호를 기준으로 오름차순 정렬을 하세요.

DESC emp;

SELECT EMPNO,
	   ENAME,
       SAL,
       HIREDATE
  FROM emp
 ORDER BY EMPNO	ASC;
 
-- 직원들의 진원번호, 이름, 급여, 입사일, 부서번호를 출력하세요.
-- 단, 10번 부서인 사람들만 출력하고, 급여를 기준으로 내림차순 정렬하세요.

SELECT EMPNO,
	   ENAME,
       SAL,
       HIREDATE,
       DEPTNO
 FROM emp
WHERE DEPTNO = 10 
ORDER BY DEPTNO	DESC;

-- 급여가 1500달러 이상인 사람들의 직원번호, 이름, 입사일, 급여, 부서번호를 출력하세요.
-- 단, 급여를 기준으로 오름차순 정렬하세요.

SELECT EMPNO,
	   ENAME,
       SAL,
       HIREDATE,
       DEPTNO
 FROM emp
WHERE SAL >= 1500
ORDER BY SAL ASC;

-- 급여가 1500달러 이상, 3000달러 이하인 사람들의 직원번호, 이름, 입사일, 급여, 부서번호를 출력하세요.
-- 단, 급여를 기준으로 오름차순 정렬하세요.

SELECT EMPNO,
	   ENAME,
       SAL,
       HIREDATE,
       DEPTNO
  FROM emp
 WHERE SAL >= 1500
   AND SAL <= 3000
 ORDER BY SAL ASC; 
 
-- 그룹함수
-- DEPTNO를 기준으로 그룹지어서 총 인원수를 보여주세요.

SELECT  DEPTNO,
		COUNT(EMPNO),
        MAX(SAL),
        MIN(SAL),
        AVG(SAL),
        MAX(SAL) - MIN(SAL)
  FROM	emp
 GROUP  BY	DEPTNO;







