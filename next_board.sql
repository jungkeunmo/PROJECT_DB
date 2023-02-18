CREATE DATABASE talktome;

USE talktome;

CREATE TABLE board (
	id				INT					NOT NULL 	PRIMARY KEY	AUTO_INCREMENT,
    title			VARCHAR(200)		NOT NULL,
    content			TEXT				NOT NULL,
    author			VARCHAR(100)		NOT NULL,
    pass			VARCHAR(4)			NOT NULL,		
    createdAt		DATETIME			NOT NULL,
	hit				INT					NOT NULL	DEFAULT 0,
    answer			VARCHAR(2000)		
);

SELECT * FROM board;

INSERT INTO board(
          title,
          content,
          author,
          pass,
          createdAt
      ) VALUES (
		"dd",
        "SEED CONTENT",
        "gg",
        "dd",
        now()
);

SELECT id,
	   title,
	   author,
       DATE_FORMAT(createdAt, "%%Y.%m.%d") AS formatCreatedAt,
       createdAt,
       hit
 FROM  board
 ORDER BY createdAt DESC;
       

