CREATE DATABASE camille_db;

SHOW databases;

USE camille_db;

CREATE TABLE reviews (
	id		INT				NOT NULL		PRIMARY KEY		AUTO_INCREMENT,
    score	INT				NOT NULL,
    content	VARCHAR(400)	NOT NULL
);

SELECT * FROM reviews;

INSERT	INTO reviews (
	score,
    content
) VALUES (
	4,
    "도기형이 좋아한데"
); 

-- 몇개? 평균 몇점?
-- reviews테이블에의 데이터는 총 몇개인지,score의 평균은 몇점인지 
-- 구하세요.

SELECT	COUNT(id)	AS count,
		AVG(score)	AS avg
  FROM	reviews;

-- 전체 데이터가 필요하다.
-- reviews 테이블에서 아이디, 평점, 내용을 출력하세요.
-- 단, id를 기준으로 내림차순 정렬하세요.

SELECT	id,
		score,
        content
  FROM	reviews
 ORDER	BY	id	DESC;

