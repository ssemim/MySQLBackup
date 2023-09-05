SELECT * FROM country;

-- 정렬 ORDER BY 컬럼명
SELECT * FROM country ORDER BY Population ASC;

SELECT * FROM country ORDER BY Population DESC;

-- 면적 순 (오름차순)
SELECT * FROM country ORDER BY SurfaceArea;
-- 면적 순 (내림차순)
SELECT * FROM country ORDER BY SurfaceArea DESC;

-- 조건절을 포함한 정렬
SELECT * FROM country WHERE Continent = 'Asia' ORDER BY Population;

-- Region이 ~Asia로 끝나는 국가들을
-- 면적의 내림차순으로 정렬하여 조회
SELECT * FROM country WHERE Region LIKE '%Asia' ORDER BY SurfaceArea DESC;

SELECT * FROM country ORDER BY Continent, Population;

-- 1.대륙의 오름차순 2.인구의 내림차순
SELECT * FROM country ORDER BY Continent DESC, Population DESC;

-- 인구밀도 조회하기
SELECT Name, Population, SurfaceArea, Population / SurfaceArea AS '인구밀도'
 FROM country
 ORDER BY Population / SurfaceArea;