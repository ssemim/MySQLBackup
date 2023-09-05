CREATE TABLE person (
	no INT PRIMARY KEY
	, name VARCHAR(15) NOT NULL
    , age INT NOT NULL
);

DESC person;

INSERT INTO person (no, name, age) VALUES (9, '둘리', 33);
INSERT INTO person (no, name, age) VALUES (10, '길동', 44);
INSERT INTO person (no, name, age) VALUES (11, '마이콜', 55);
INSERT INTO person (no, name, age) VALUES (12, '가시고기', 100);
INSERT INTO person (no, name, age) VALUES (13, '둘리', 33);

SELECT * FROM person;

UPDATE person
 SET name = '새이름', age = 22
 WHERE no = 13;

DELETE FROM person WHERE no = 13;
