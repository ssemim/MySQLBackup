-- David Lee 보다 높은 연봉을 받는 직원들을 조회
SELECT * FROM employees
 WHERE salary > (SELECT salary
				 FROM employees
				 WHERE first_name = 'David' AND last_name = 'Lee'); -- sub-query

-- 직원 전체의 평균 salary보다 높은 직원들 조회
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- 각 직원의 연봉 - 평균연봉 조회
SELECT
    first_name,
    last_name,
    salary,
    salary - ROUND((SELECT AVG(salary)
					FROM employees),
					1) AS 'gap'
FROM
    employees;

-- 최고 연봉자, 최저 연봉자 직원 조회.
SELECT first_name, last_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees)
 OR salary = (SELECT MIN(salary) FROM employees);


