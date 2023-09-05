--  HR 데이터베이스 employees 테이블 연습
--  1. 부서(department_id) 그룹별 평균 연봉 조회하기
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id;
--  2. 전체직원 연봉(연봉 합)에 대해, 각 (개인별 연봉 / 전체직원 연봉) 비율을 계산해 조회하기
SELECT first_name, last_name, salary
	, ROUND((salary / (SELECT SUM(salary) FROM employees) * 100), 1) AS 'rate'
 FROM employees;
--  3. 본인이 속한 부서의 평균 연봉보다 높은 연봉을 가진 직원 조회하기
--    -> 별명이 있는 테이블의 특정 칼럼을 표현하는 법 : 테이블별명.컬럼이름
--    -> SELECT A.first_name FROM employees AS A;

SELECT * 
FROM employees AS A
WHERE salary > 
	(SELECT AVG(salary) 
    FROM employees 
    WHERE department_id = A.department_id
    GROUP BY department_id);
--  4. 고용일(hire_date) 기준으로 1987-06-01 ~ 1987-06-30 범위 안에 고용된 직원 조회
SELECT * FROM employees WHERE hire_date LIKE '1987-06-%';
SELECT * FROM employees
 WHERE EXTRACT(YEAR FROM hire_date) = 1987 AND EXTRACT(MONTH FROM hire_date) = 6;
SELECT * FROM employees
 WHERE hire_date BETWEEN DATE '1987-06-01' AND '1987-06-30';
 
--  5. Douglas Grant의 email 컬럼의 값을 'ERROR'로 수정하기
CREATE TEMPORARY TABLE employees_copy LIKE employees; -- CREATE TABLE 구조만 만드는 것, CREATE TEMPORARY TABLE 영구적사용이아닌 임시테이블 만들기(왼쪽 목록에서 보이지 않지만 사용시 존재함)
INSERT INTO employees_copy SELECT * FROM employees; -- employees_copy컬럼이랑 employees컬럼이랑 일치해야한다.
SELECT * FROM employees_copy; -- 임시테이블은 어디?언제까지 존재하나 : 접속 후 작업하는 기간을 session이라 부름, 유지되는 기간은 세션이 작동?하는 동안임(홈버튼옆 큰 창)
DROP TABLE employees_copy; -- 복사된 테이블 필요없어지면 드랍으로 날리면됨
UPDATE employees_copy
SET email = 'ERROR'
WHERE first_name = 'Douglas' AND last_name = 'Grant';
SELECT * FROM employees_copy WHERE first_name = 'Douglas' AND last_name = 'Grant';

--  6. 부서명(부서명은 departments 테이블의 department_name)이 IT로 시작하는 부서에서 근무하는 직원들의
-- 	연봉값을 1.5배로 수정하기
UPDATE employees_copy
 SET SALARY = SALARY * 1.5
 WHERE DEPARTMENT_ID IN
	(SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%');

--  7. 적은 연봉순으로 5등(DENSE_RANK)에 해당하는 4행의 직원의 연봉값을 기존값 + 1000으로 수정하기
-- SELECT DISTINCT SALARY FROM employees ORDER BY SALARY LIMIT 1 OFFSET 4; -- DISTINCT로 중복제거, 5등을 구하기 위해 위의 4개를 OFFSET으로 없앰.
UPDATE employees_copy
 SET SALARY = SALARY + 1000 
 WHERE SALARY = (SELECT DISTINCT SALARY FROM employees ORDER BY SALARY LIMIT 1 OFFSET 4);

