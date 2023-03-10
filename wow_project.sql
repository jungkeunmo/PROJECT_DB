CREATE DATABASE wow_project;

USE wow_project;

CREATE TABLE boards(
	id				INT					NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    title			VARCHAR(200)		NOT NULL,
    content			VARCHAR(1000)		NOT NULL,
    createdAt		DATETIME			NOT NULL,
	updatedAt		DATETIME		    NOT NULL,
    userId			INT 			    NOT NULL,
    isDelete		TINYINT(1)		NOT NULL	DEFAULT	false
);

ALTER TABLE boards ADD FOREIGN KEY(userId) REFERENCES users(id); 

CREATE TABLE qna(
	id				INT					NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    title			VARCHAR(200)		NOT NULL,
    content			VARCHAR(1000)		NOT NULL,
    createdAt		DATETIME			NOT NULL,
	updatedAt		DATETIME		    NOT NULL,
    userId			INT 			    NOT NULL,
    isDelete		TINYINT(1)		NOT NULL	DEFAULT	false
);

ALTER TABLE qna ADD FOREIGN KEY(userId) REFERENCES users(id); 

SELECT * FROM qna;

CREATE TABLE fqa(
	id				INT					NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    title			VARCHAR(200)		NOT NULL,
    content			VARCHAR(1000)		NOT NULL,
    createdAt		DATETIME			NOT NULL,
	updatedAt		DATETIME		    NOT NULL,
    userId			INT 			    NOT NULL,
    isDelete		TINYINT(1)		NOT NULL	DEFAULT	false
);

ALTER TABLE fqa ADD FOREIGN KEY(userId) REFERENCES users(id); 


CREATE TABLE notices(
	id				INT					NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    title			VARCHAR(200)		NOT NULL,
    content			VARCHAR(1000)		NOT NULL,
    createdAt		DATETIME			NOT NULL,
	updatedAt		DATETIME		    NOT NULL,
    userId			INT 			    NOT NULL,
    isDelete		TINYINT(1)		NOT NULL	DEFAULT	false
);

ALTER TABLE notices ADD FOREIGN KEY(userId) REFERENCES users(id);

DROP TABLE notices;
COMMIT;

SELECT * FROM notices;

CREATE TABLE events(
	id				INT					NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    title			VARCHAR(200)		NOT NULL,
    content			VARCHAR(1000)		NOT NULL,
    createdAt		DATETIME			NOT NULL,
	updatedAt		DATETIME		    NOT NULL,
    userId			INT 			    NOT NULL,
    isDelete		TINYINT(1)		NOT NULL	DEFAULT	false
);

ALTER TABLE events ADD FOREIGN KEY(userId) REFERENCES users(id); 

DROP TABLE events;
COMMIT;

SELECT 	A.id,
		A.title,
		B.name,
		A.createdAt
  FROM	boards	 A
 INNER  
  JOIN  users	 B
	ON  A.userId = B.id
 ORDER  BY	A.createdAt	 DESC
;         

INSERT INTO boards(
          title,
          content,
          createdAt
      ) VALUES (
		"?????????",
        "???????????????",
        now()
);

SELECT * FROM boards;

CREATE TABLE users(
	id 							INT 						NOT NULL 						PRIMARY KEY 						AUTO_INCREMENT,
    name 						VARCHAR(100),
    birth 						DATE,
    gender 						VARCHAR(10),
    phone_number 				INT,
    email 						VARCHAR(100),
    password 					VARCHAR(50)
);

SELECT 	name,
		phone_number,
        birth,
        gender,
        email
  FROM users;

DROP TABLE users;
COMMIT;

UPDATE boards
	SET title = "${bDatatitle}",
		content = "${bDatacontent}",
		updatedAt = now()
  WHERE id = 1
;

INSERT INTO users (
	name,
    birth,
    gender,
    phone_number,
    email,
    password
) VALUES (
	"?????????",
    080314,
    "??????",
    01057683492,
    "fourleaf.edu.jsy@gmail.com",
    "?????????"
);

SELECT * FROM users;

DELETE FROM users
	WHERE  id = 2
;

SELECT  id,
		title,
		score,
		episode,
		being,
		publish
  FROM  webtoons
 WHERE  publish		LIKE	'???????????????'
   AND  being		LIKE	'??????'
   ORDER	BY	score	DESC;

 SELECT  id,
		title,
		score,
		episode,
		being,
		publish
  FROM  webtoons
 WHERE  being		LIKE	'??????';


DROP TABLE webtoons;
commit;

CREATE TABLE webtoons(
	id			INT				NOT NULL		PRIMARY KEY				AUTO_INCREMENT,
    title		VARCHAR(100)	NOT NULL,
    score		INT				NOT NULL,
	Introduction VARCHAR(200) 	NOT NULL,
	being		VARCHAR(30)		NOT NULL,
    publish		VARCHAR(50) 	NOT NULL,
    days		VARCHAR(30)	
);

SELECT * FROM webtoons;

   SELECT    id,
              title,
              score,
              episode,
              being,
              publish
      FROM    webtoons;

INSERT INTO webtoons(
		title,
        score,
		Introduction,
        being,
        publish,
        days
	) VALUE (
		"????????? ????????????",
        1,
        "Introduction",
        "??????",
        "??????????????????",
        "?????????"
);

SELECT * FROM events;

CREATE TABLE frees(
	id				INT					NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    title			VARCHAR(200)		NOT NULL,
    content			VARCHAR(1000)		NOT NULL,
    createdAt		DATETIME			NOT NULL,
    anonymousName	VARCHAR(10)			NOT NULL
);

DROP TABLE frees;
COMMIT;

SELECT * FROM frees;


