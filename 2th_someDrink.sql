CREATE DATABASE someDrink;

SHOW databases;

USE someDrink;

CREATE TABLE drinks (
	       id		INT			NOT NULL	PRIMARY KEY		AUTO_INCREMENT,
	     name		VARCHAR(20)	NOT NULL,
	     size		VARCHAR(60)	NOT NULL,
        price		INT 		NOT NULL,
    createdAt   	DATETIME
);

SELECT * FROM drinks; 

INSERT	INTO drinks (
	name,
	size,
    price,
    createdAt
) VALUES (
	"테스트7",
    "테스트6",
    5,
    now()
); 

SELECT	name,
		size,
        price,
        createdAt
  FROM  drinks;     
  
CREATE TABLE reviews (
	       id		INT			NOT NULL	PRIMARY KEY		AUTO_INCREMENT,
		score		INT			NOT NULL,
	  content		VARCHAR(60)	NOT NULL,
    createdAt   	DATETIME
);

SELECT * FROM reviews;

INSERT INTO reviews (
	score,
    content,
    createdAt
) VALUES (
    5,
    "리뷰작성 테스트",
    now()
);  
    
SELECT	score,
		content,
        createdAt
  FROM  reviews
 ORDER 	BY content ASC;
      
    
-- someDrink 데이터베이스 에
-- reviews 테이블을 만든다.

-- reviews 테이블은 id와 score, content, createdAt로 구성되어있다.
-- score는 정수형이고, content는 문자열로 구성된다.
-- createdAt은 날짜형으로 작성시간을 받도록 한다.

-- "/" 화면에 리뷰를 최근 작성 순으로 정렬하여 보여주고,
-- 동일한 화면 상단에는 리뷰를 작성할 수 있는 폼을 생성한다.

-- 리뷰를 생성한 후 redirect를 통해 리뷰데이터를 다시 불러올 수 있도록 개발한다. 













