-- SQL 문자열 데이터 타입
-- 고정 길이(5), 가변 길이(5)
-- A _ _ _ _
-- A

-- 고정 길이 CHAR
-- 가변 길이 VARCHAR

CREATE TABLE person (
	name VARCHAR(15)
    , age INT
);

SELECT * FROM person;

INSERT INTO person (name, age) VALUES ('스티븐 킹', 44);
INSERT INTO person VALUES ('브루스 리', 33);
INSERT INTO person (name, age) VALUES ('브루스 웨인', 22), ('클락 켄트', 23), ('피터 파커', 24);






