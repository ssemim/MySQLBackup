-- employees
SELECT * FROM employees;
-- departments
SELECT * FROM departments;

-- 직원의 이름과 근무하는 부서의 이름
SELECT A.first_Name, A.last_Name, B.DEPARTMENT_NAME
 FROM employees A
 LEFT JOIN departments B ON A.department_id = B.department_id
 WHERE B.DEPARTMENT_NAME = 'IT';

SELECT A.first_Name, A.last_Name, B.DEPARTMENT_NAME
 FROM employees A
 INNER JOIN departments B ON A.department_id = B.department_id AND B.DEPARTMENT_NAME = 'IT';

SELECT A.first_Name, A.last_Name, B.DEPARTMENT_NAME
 FROM employees A
 INNER JOIN (SELECT *
			 FROM departments
			 WHERE department_name = 'it') B ON A.department_id = B.department_id;

SELECT * FROM departments;
SELECT * FROM locations;

-- departments locations 결합 departments의 모든 행 조회
SELECT *
 FROM departments A
 LEFT JOIN locations B ON A.LOCATION_ID = B.LOCATION_ID;
 
-- 부서 중 Seattle에 위치한 부서들만 조회하기
SELECT *
 FROM departments A
 LEFT JOIN locations B ON A.LOCATION_ID = B.LOCATION_ID
 WHERE B.CITY = 'Seattle';
 
-- Seattle에 위치한 부서에서 근무하는 직원 목록
SELECT A.first_name, A.last_name, B.DEPARTMENT_NAME, C.city
 FROM employees A
 LEFT JOIN departments B ON A.DEPARTMENT_ID = B.DEPARTMENT_ID
 LEFT JOIN locations C ON B.LOCATION_ID = C.LOCATION_ID
 WHERE C.City = 'Seattle';

-- 자기가 속한 부서의 평균 연봉보다 높이 받는 직원 조회
SELECT * FROM employees A
LEFT JOIN (SELECT department_id, AVG(salary) AS avg
			 FROM employees
			 GROUP BY department_id) B ON A.department_id = B.department_id
WHERE A.salary > B.avg;






