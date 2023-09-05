SELECT Name '이름', SurfaceArea AS '면적', Population AS '인구' FROM country;

SELECT 1 + 1 AS '합'; -- 계산값 별명

-- 인구밀도 (Popluation / SurfaceArea)
SELECT Name, Population, SurfaceArea, Population / SurfaceArea AS '인구밀도' FROM country;