CREATE TABLE IF NOT EXISTS movie (
	id INT AUTO_INCREMENT
	, title VARCHAR(30) NOT NULL
	, year INT NULL
	, directorName VARCHAR(15) NULL
	, score DOUBLE NULL
    
    , PRIMARY KEY (id)
);

INSERT INTO movie (title, year, directorName, score) VALUES ('클레멘타인', 2004, '김두영', 1.4);
INSERT INTO movie (title, year, directorName, score) VALUES ('주글래 살래', 2003, '김두영', 3.5);

INSERT INTO movie (title) VALUES ('제목만 있는 영화 정보');

SELECT * FROM movie;
