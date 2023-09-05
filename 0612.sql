-- 1. rdbms가 관리하고 있는 데이터베이스 목록을 조회하세요
SHOW DATABASES;
-- 2. `hr` 데이터베이스를 사용하는 SQL 명령어를 작성하세요
USE hr;
-- 3. `hr` 데이터베이스에 존재하는 테이블들의 목록을 조회하세요
SHOW TABLES;
-- 4. `employees` 테이블은 직원 정보의 테이블입니다. 어떠한 컬럼이 있는 지 조회하세요
DESC employees;
-- 5. `employees` 테이블의 모든 행 모든 열을 조회하세요
SELECT * FROM employees;
-- 6. 직원 정보 중 first_name(이름), last_name(성)의 컬럼만을 조회하세요
SELECT first_name, last_name FROM employees;
-- 7. 직원의 완성된 이름(이름 + 성)이 결합된 컬럼을 `Full_Name`이라는 별명으로 조회하세요
SELECT CONCAT(first_name, ' ', last_name) AS Full_Name FROM employees;
-- 8. `first_name`의 오름차순 조회
SELECT * FROM employees ORDER BY first_name ASC;
-- 9. `last_name`이 'Olson'인 직원 조회
SELECT * FROM employees WHERE last_name = 'Olson';
-- 10. `last_name`이 6글자인 직원 조회
SELECT * FROM employees WHERE last_name LIKE '______';
SELECT * FROM employees WHERE CHAR_LENGTH(last_name) = 6;
-- 11. 연봉 정보인 `salary` 값이 10000 ~ 15000 사이의 직원 조회
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 15000;
-- 12. 연봉 정보의 6%를 계산된 컬럼으로 조회하세요 (반올림하여 소수점 1자리까지 표현)
SELECT first_name, last_name, salary, ROUND(salary * 0.06, 1) AS 'tax' FROM employees;
-- 13. 연봉이 낮은 순으로 1~20등, 21~40등 각각 조회
SELECT first_name, last_name, salary FROM employees ORDER BY salary LIMIT 20;
SELECT first_name, last_name, salary FROM employees ORDER BY salary LIMIT 20 OFFSET 20;
-- 14. 부서 정보 `department_id` 값이 30 이거나 100인 직원 조회
SELECT first_name, last_name, department_id FROM employees WHERE department_id IN (30, 100);


