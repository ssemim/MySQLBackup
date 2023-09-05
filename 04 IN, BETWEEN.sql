-- 한, 중, 일 3행을 조회
SELECT * FROM country
 WHERE Name = 'South Korea' OR Name = 'Japan' OR Name = 'China';

SELECT * FROM country
 WHERE Name IN ('South Korea', 'Japan', 'China');

-- 인구(Population)가 40000000 이상의 국가들 조회: 28행
SELECT * FROM country
 WHERE Population >= 40000000;

-- 인구(Population)가 50000000 이하의 국가들 조회: 215행
SELECT * FROM country
 WHERE Population <= 50000000;

-- 인구가 40000000 ~ 50000000 국가 조회: 4행
SELECT * FROM country
 WHERE Population >= 40000000 AND Population <= 50000000;

SELECT * FROM country
 WHERE Population BETWEEN 40000000 AND 50000000;

-- 인구가 4천만 이상 국가 조회 (단, Asia 대륙의 국가는 제외한다): 15
SELECT * FROM country
 WHERE Population >= 40000000 AND Continent <> 'Asia';
 
 
 