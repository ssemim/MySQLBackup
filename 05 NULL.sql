SELECT NULL;

-- WHERE 컬럼 = NULL;

SELECT Name, IndepYear FROM country
WHERE IndepYear IS NULL;

SELECT Name, IndepYear FROM country
WHERE IndepYear IS NOT NULL;

-- 기대수명 LifeExpectancy
-- 기대수명 Null값 제외한 국가명, 기대수명 조회
SELECT Name, LifeExpectancy FROM country
 WHERE LifeExpectancy IS NOT NULL;