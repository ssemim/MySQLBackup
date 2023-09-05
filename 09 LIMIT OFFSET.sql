SELECT * FROM country ORDER BY Population DESC LIMIT 2;

SELECT * FROM country ORDER BY Population DESC LIMIT 1 OFFSET 1;

-- 인구 많은 11위 ~ 20위 국가
SELECT * FROM country ORDER BY Population DESC LIMIT 10 OFFSET 10;

-- 21위 ~ 30위
SELECT * FROM country ORDER BY Population DESC LIMIT 10 OFFSET 20;
SELECT * FROM country ORDER BY Population DESC LIMIT 20, 10;

-- GNP 하위 국가 20개 조회 (단, 0인 국가는 제외한다)
SELECT * FROM country WHERE GNP <> 0 ORDER BY GNP ASC LIMIT 20;