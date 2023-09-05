SELECT ABS(-44);
SELECT ROUND(10.555, 1);
SELECT CEIL(10.555);
SELECT FLOOR(10.555);
SELECT POW(2, 3);
SELECT RAND();

SELECT TRIM('     abc     ');
SELECT LTRIM('     qwer');
SELECT RTRIM('zxcv     ');

SELECT UPPER('upper');
SELECT LOWER('LOWER');

SELECT CONCAT('abc', 'def', 'ghi');
SELECT REVERSE('abcde');
SELECT REPLACE('oooxxxooo', 'x', 'A');
SELECT REPLACE('oooabcooo', 'abc', 'zzz');
SELECT SUBSTRING('abcde', 2, 4);
SELECT SUBSTRING('abcde', 3, 1);

SELECT LOCATE('.', 'abc.def.ghi');
SELECT LOCATE('.', 'abc.def.ghi', 5);
--                  123456789

SELECT IF(10 < 5, '참일때', '거짓일때');
SELECT IF(STRCMP('같냐', '같냐') = 0, '같습니다', '다릅니다');

SELECT CASE WHEN 0 THEN '왼쪽은 오른쪽보다 큼'
		WHEN 1 THEN '다음 분기'
		ELSE '왼쪽은 오른쪽보다 크지 않음' END;

SELECT * FROM employees;
-- 1. 직원의 풀 네임(이름 + 성)을 모두 대문자
-- 1-1. 직원의 이름결합값(첫글자 + 성)과 email 컬럼의 값이 같으면 '정상 이메일', 다르면 '잘못된 이메일'
-- 2. PHONE_NUMBER '.'을 기준으로 가장 앞 문자들
-- 3. 연봉이 10000 초과면 '높음', 미만이면 '낮음', 같으면 '10000'
SELECT UPPER(CONCAT(first_name, last_name)) AS FULL_NAME
	, IF(STRCMP(UPPER(CONCAT(SUBSTRING(first_name, 1, 1), LAST_NAME)), EMAIL) = 0, "정상 이메일", "잘못된 이메일") AS EMAIL_CHECK
	, SUBSTRING(PHONE_NUMBER, 1, LOCATE('.', PHONE_NUMBER) - 1) AS PHONE_NUMBER_SUB
    , CASE WHEN SALARY > 10000 THEN '높음'
			WHEN SALARY < 10000 THEN '낮음'
            ELSE '같음' END AS SALARY_CHECK
 FROM employees;


 