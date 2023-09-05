SELECT * FROM employees;

SELECT department_id, AVG(salary) FROM employees WHERE department_id = 90;
SELECT department_id, AVG(salary) FROM employees WHERE department_id = 60;
SELECT department_id, AVG(salary) FROM employees WHERE department_id = 100;

SELECT department_id, AVG(salary) FROM employees GROUP BY department_id;

-- Job_id 그룹별 salary 합, 평균, 최대, 최소 조회
SELECT Job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary)
 FROM employees GROUP BY Job_id;

-- Job_id 가 AD로 시작하는 
SELECT Job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary)
FROM employees
WHERE Job_id LIKE 'AD%'
GROUP BY Job_id;

-- 집계 결과에 따라 정렬
SELECT `Job_id`, SUM(salary) AS 'SUM_SALARY'
 FROM `employees`
 GROUP BY Job_id
 ORDER BY `SUM_SALARY`;

SELECT `Job_id`, SUM(salary) AS 'SUM_SALARY'
 FROM `employees`
 GROUP BY Job_id
 HAVING `SUM_SALARY` >= 10000
 ORDER BY `SUM_SALARY`;
 
-- 부서별 최고 salary 조회 (단, 부서 인원이 10명 이상인 부서만 조회)
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 10;


