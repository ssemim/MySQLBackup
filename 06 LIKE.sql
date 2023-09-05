SELECT * FROM country WHERE Name = 'South Korea' OR NAME = 'North Korea';

SELECT * FROM country WHERE Name = 'Korea';

-- 패턴 검색
SELECT * FROM country WHERE Name LIKE '%Korea';

-- ~ria로 끝나는 국가명을 가진 국가 행 조회: 6개
SELECT * FROM country WHERE Name LIKE '%ria';

-- Region이 North로 시작하는 국가들
SELECT * FROM country WHERE Region LIKE 'North%';

-- A를 포함하는 국가명 조회
SELECT * FROM country WHERE Name LIKE '%A%';

SELECT * FROM country WHERE Name LIKE 'a______a';

-- Region이 '~Africa'로 끝나고, 국가명이 'A~'로 시작하는 국가 조회: 2행
SELECT * FROM country WHERE Region LIKE '%Africa' AND Name LIKE 'A%';