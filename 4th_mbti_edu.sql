CREATE DATABASE mbti_edu;

USE mbti_edu;

CREATE TABLE outcomes (
	id			INT				NOT NULL	PRIMARY KEY		AUTO_INCREMENT,
    minScore	INT				NOT NULL,
	maxScore	INT				NOT NULL,
    content		VARCHAR(500)	NOT NULL
);

INSERT INTO outcomes (
	minScore,
    maxScore,
    content
) VALUES (
	81,
    100,
    "다섯번째 결과물"
);

UPDATE `mbti_edu`.`outcomes` 
SET `content` = '두번째결과물' 
WHERE (`id` = '3');

SELECT * FROM outcomes;