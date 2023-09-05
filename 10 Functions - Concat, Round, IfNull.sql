SELECT ROUND(10 / 30, 1);
SELECT ROUND(NULL, 1);

SELECT CONCAT("Hello", " ", "World", "~");
SELECT CONCAT("Hello", NULL, "World", "~");

SELECT IFNULL(NULL, '대체값');
SELECT IFNULL(NULL, 50.555);

-- country 테이블 국가코드-국가명 조회
SELECT CONCAT(Code, '-', Name) AS '국가코드-국가명' FROM country;

-- 국가명, GNPOld(Null -> 0, 소수점 1자리)
SELECT Name, ROUND(IFNULL(GNPOld, 0), 1) AS GNPOld FROM country;