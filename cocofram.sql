CREATE DATABASE cocofram;

USE cocofram;

SHOW tables;

CREATE TABLE contact (
	id			INT 			NOT NULL 	PRIMARY KEY		AUTO_INCREMENT,
    name		VARCHAR(20)		NOT NULL,
    price		INT				NOT NULL,
    mobile		VARCHAR(15) 	NOT NULL,
    content		VARCHAR(1000)	NOT NULL,
    createdAt	DATETIME		NOT NULL,
    isCompleted	TINYINT			NOT NULL	default false,
    completdAt	DATETIME		NOt NULL
);

ALTER TABLE contact MODIFY COLUMN completdAt DATETIME;

INSERT INTO contact (
	name, 
    price,
    mobile,
    content,
    createdAt	
) VALUES (
	"text",
    30000,
    "01012345678",
    "무농약",
    now()
);

CREATE TABLE brand(
	id		INT    			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title	VARCHAR(500)	NOT NULL,
    content1 VARCHAR(500) 	NOT NULL,
    content2 VARCHAR(500) 	NOT NULL,
    content3 VARCHAR(500) 	NOT NULL
);

INSERT	INTO  brand (title, content1, content2, content3) VALUES
("테스트", "테스트테스트테스트테스트", "테스트테스트테스트테스트", "테스트테스트테스트테스트"),
("테스트", "테스트테스트테스트테스트", "테스트테스트테스트테스트", "테스트테스트테스트테스트");  

SELECT * FROM brand;

UPDATE 	brand
   SET 	content1 = "테스트 컨텐트1",
		content2 = "테스트 컨텐트2",
        content3 = "테스트 컨텐트3"
 WHERE  id = 2;       

SELECT * FROM contact;

SELECT 	id,
		name,
		CONCAT((price), "원"),
		mobile,
		DATE_FORMAT(createdAt, "%Y년%m월%d일") AS CreatedAt,
		content
  FROM  contact
 ORDER 	BY createdAt DESC;

DESC brand;






