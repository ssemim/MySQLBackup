USE hr;

-- 연봉 1 ~ 10등, 연봉 31 ~ 40등 조회
(SELECT first_name, last_name, salary FROM employees ORDER BY SALARY DESC LIMIT 10)
UNION
(SELECT first_name, last_name, salary FROM employees ORDER BY SALARY DESC LIMIT 10 OFFSET 30);

SELECT 1, 2, 3, 4
UNION ALL
SELECT 5, 6, 7, 8
UNION ALL
SELECT 1, 2, 3, 4
UNION ALL
SELECT 1, 2, 3, 4;