CREATE DATABASE imageweb;

USE imageWeb;

CREATE TABLE typeOne (
	id		 INT			NOT NULL 	PRIMARY KEY	AUTO_INCREMENT,
    txt		 VARCHAR(100)	NOT NULL,
    imageURL VARCHAR(500)	NOT NULL	
);

INSERT INTO	typeOne (txt, imageURL)
VALUES	("Hello Content", "https://i.pinimg.com/474x/9a/3c/63/9a3c63777e124fec064902e7e9cf8699.jpg");

SELECT * FROM typeOne;

SELECT id,
	   txt,
       imageURL
 FROM typeOne;      

CREATE TABLE typeTwo (
	id		 INT			NOT NULL 	PRIMARY KEY	AUTO_INCREMENT,
    imageURL VARCHAR(500)	NOT NULL	
);

CREATE TABLE typeThree (
	id		 INT			NOT NULL 	PRIMARY KEY	AUTO_INCREMENT,
    txt		 VARCHAR(100)	NOT NULL,
    imageURL VARCHAR(500)	NOT NULL	
);

INSERT INTO	typeThree (txt, imageURL)
VALUES	("Hello Content4", "https://i.pinimg.com/474x/9a/3c/63/9a3c63777e124fec064902e7e9cf8699.jpg");

SELECT * FROM typeThree;