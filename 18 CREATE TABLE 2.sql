-- 학생 테이블
-- 이름 가변길이 문자열(10)
-- 성 가변길이 문자열(10)
-- 국어 점수 정수
-- 영어 점수 정수
-- 수학 점수 정수

-- 위의 테이블에 행 추가
CREATE TABLE IF NOT EXISTS student (
	firstName VARCHAR(10) NOT NULL
    , lastName VARCHAR(10)
    , kor INT
    , eng INT
    , math INT
);

INSERT INTO student (firstName, lastName, kor, eng, math)
VALUES ('길이제한', '성', 333.444, 99, 30);

INSERT INTO student (firstName, lastName, kor, eng, math)
VALUES (NULL, NULL, NULL, NULL, NULL);

SELECT * FROM student;



