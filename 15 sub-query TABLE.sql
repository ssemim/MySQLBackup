-- 오름차순
SELECT * FROM
	(SELECT first_name, last_name, salary
	 FROM employees
	 ORDER BY salary DESC
	 LIMIT 10) AS A
ORDER BY salary ASC;

-- 부서 테이블(departments) IT명으로 시작하는 부서 번호 조회
SELECT department_id FROM departments WHERE department_name LIKE 'IT%';
-- IT 부서에서 일하는 직원 조회
SELECT first_name, last_name
 FROM employees
 WHERE department_id IN (SELECT department_id FROM departments WHERE department_name LIKE 'IT%');