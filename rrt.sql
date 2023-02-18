CREATE DATABASE rrt;

USE rrt;

CREATE TABLE `user` (
	id			INT					NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    email		VARCHAR(200)		NOT NULL,
    secretCode	VARCHAR(100)		,
    nickname	VARCHAR(30)			NOT NULL,
	avatar		VARCHAR(500)		,
    statusMsg	VARCHAR(100)		,
    createdAt	DATETIME			NOT NULL,
    updatedAt	DATETIME			NOT NULL
);

CREATE TABLE friend (
	id		INT		NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    who		INT		NOT NULL,
    whom 	INT		NOT NULL
);

ALTER TABLE friend ADD FOREIGN KEY(who) REFERENCES `user`(id);
ALTER TABLE friend ADD FOREIGN KEY(whom) REFERENCES `user`(id);

SELECT * FROM user;

SELECT * FROM friend;

-- 근모가(1) -> 은진이(2), 선생님(3), 태섭이엉아(4) 를 친추
-- 은진이(2) -> 근모가(1), 

INSERT INTO friend (who, whom) VALUES
	(1, 2),
    (1, 3),
    (1, 4),
    (2, 1),
    (2, 3),
    (2, 4);
    
-- 근모가 로그인을 했다. 아이디 1번. 근모가 친추한 사람들의 아바타, 닉네임, 상태메세지를 출력하세요
-- 단, 닉네임 순 오름차순으로 정렬한다.

-- 로그인 된 사람 기준 친구리스트 불러오기

SELECT	id,
		avater,
        nickname,
        statusMsg
  FROM	user
 WHERE	id IN (
	SELECT whom
	FROM friend
	WHERE who = 1
 ); 

SELECT whom
  FROM friend
 WHERE who = 1;
    
-- ------------------------------

SELECT id
  FROM user
 WHERE email = ㅇㅇㅇ; 
 
 
 SELECT * FROM user;

-- 화면에서 이메일을 입력하면
-- 그정보를 빽앤드로 보낸다.

SELECT id, 
	   email,
       nickname,
       avatar,
       statusMsg
 FROM  user
 WHERE   email= "${email}"
		AND secretCode = 333;
 


INSERT INTO `user` (email, secretCode, nickname, avatar,  statusMsg,  createdAt, updatedAt) VALUES 
	('abc59684495@gmail.com', null, '익명1', null, null, now(), now()),
    ('ssad42444795@gmail.com', null, '익명2', null, null, now(), now()),
    ('kkkll42444795@gmail.com', null, '익명3', null, null, now(), now()),
    ('iiiii42444795@gmail.com', null, '익명4', null, null, now(), now());
    
    
CREATE TABLE message (
	id			INT				NOT NULL		PRIMARY	KEY		AUTO_INCREMENT,
    who			INT				NOT NULL,
    whom 		INT     		NOT NULL,
    content 	VARCHAR(500) 	NOT NULL,
    isRead 		TINYINT(1) 		NOT NULL,
    createdAt 	DATETIME 		NOT NULL
);
