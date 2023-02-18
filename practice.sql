USE reviews;

CREATE TABLE img (
		   id		INT			NOT NULL	PRIMARY KEY		AUTO_INCREMENT,
		 name		VARCHAR(20)	NOT NULL,
		 size		VARCHAR(40) NOT NULL,
    createdAt       DATETIME
);

SELECT * FROM img;

INSERT	INTO img (
	name,
	size,
    createdAt 
) VALUES (
	"테스트2",
    "테스트2",
    now()
);

SELECT name,
	   size,
       createdAt
  FROM img;
  
  