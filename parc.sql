CREATE DATABASE prac;

USE prac;

CREATE TABLE users (
	id			INT				NOT NULL	AUTO_INCREMENT		PRIMARY KEY,
    email		VARCHAR(100) 	NOT NULL	UNIQUE,
    password	VARCHAR(300)	NOT NULL,
    name		VARCHAR(20)		NOT NULL,
    mobile		VARCHAR(20)		NOT NULL,
    createdAt 	DATETIME		NOT NULL,
    updatedAt	DATETIME		NOT NULL
);

INSERT INTO users(
          email,
          password,
          name,
          mobile,
          createdAt,
          updatedAt
      ) VALUES (
		"abc16534@gmail.com",
        "1234",
        "www",
        "gggg",
        now(),
        now()
);

-- 테이블 지우기
DROP TABLE users;
COMMIT;

SELECT * FROM users;

SELECT  		email,
                password,
                name,
                mobile
          FROM  users
         WHERE  email = "abc@gmail.com"
           AND  password = "1234";
           
           
CREATE TABLE boards (
	id			INT 			NOT NULL	PRIMARY KEY 	AUTO_INCREMENT,
    title		VARCHAR(200)	NOT NULL,
    content		VARCHAR(2000)	NOT NULL,
    createdAt	DATETIME		NOT NULL,
    updatedAt	DATETIME		NOT NULL,
    userId		INT 			NOT NULL,
    isDelete	TINYINT(1)		NOT NULL	DEFAULT	false
);

SELECT * FROM boards;

ALTER TABLE boards ADD FOREIGN KEY(userId) REFERENCES users(id); 

SELECT 	A.id,
		A.title,
        B.name,
        A.createdAt
  FROM	boards	 A
 INNER  
  JOIN  users	 B
    ON  A.userId = B.id
 ORDER  BY	A.createdAt	DESC;   
  
  
  
  
  
  









