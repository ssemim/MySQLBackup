-- 주차 관리 프로그램
-- 차종
-- 차번호(4자)

-- 테이블 생성
CREATE TABLE IF NOT EXISTS cars (
	number CHAR(4) NOT NULL UNIQUE
    , type VARCHAR(15) NOT NULL
    
    , PRIMARY KEY (number)
);

DESC cars;
-- 행 추가 메소드
INSERT INTO cars (number, type) VALUES ('1234', '소나타');
-- 모든 행 조회
SELECT * FROM cars;
-- pk값으로 1행 조회
SELECT * FROM cars WHERE number = '1234';
-- pk값으로 행 삭제
DELETE FROM cars WHERE number = '1234';
-- jdbc 메소드 작성 및 테스트
















