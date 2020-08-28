SELECT COUNT(*) FROM EMPLOYEES;
SELECT COUNT(commission_pct) FROM EMPLOYEES;
SELECT COUNT(nvl(commission_pct,0)) FROM EMPLOYEES;
SELECT COUNT(DISTINCT department_id) FROM EMPLOYEES;
SELECT DEPARTMENT_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER by DEPARTMENT_ID;
SELECT DEPARTMENT_ID, MAX(HIRE_DATE) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT DEPARTMENT_ID, round(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID ORDER BY JOB_ID;
SELECT job_id, DEPARTMENT_ID FROM EMPLOYEES ORDER BY DEPARTMENT_ID;
SELECT DEPARTMENT_ID, COUNT(employee_id) FROM EMPLOYEES GROUP by DEPARTMENT_ID,JOB_ID ORDER by DEPARTMENT_ID;
SELECT  DEPARTMENT_ID,JOB_ID,COUNT(EMPLOYEE_ID) FROM EMPLOYEES GROUP BY DEPARTMENT_ID,JOB_ID ORDER BY DEPARTMENT_ID;
SELECT  DEPARTMENT_ID,JOB_ID,SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID >40 GROUP by DEPARTMENT_ID,JOB_ID ORDER BY DEPARTMENT_ID;
SELECT  DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES WHERE AVG(SALARY) > 8000 GROUP BY DEPARTMENT_ID;
SELECT  DEPARTMENT_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT  DEPARTMENT_ID, MAX(SALARY) sal FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING MAX(SALARY)>10000;
SELECT  JOB_ID,SUM(SALARY) FROM EMPLOYEES GROUP BY JOB_ID HAVING sum(SALARY)>13000 AND JOB_ID NOT LIKE '%REP%';
SELECT EMPLOYEE_ID,LAST_NAME, DEPARTMENT_ID  FROM EMPLOYEES  JOIN DEPARTMENTS USING(DEPARTMENT_ID);


SELECT
	DEPARTMENT_ID,
	MAX(SALARY)
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID
HAVING
	DEPARTMENT_ID = 20;

SELECT
	MIN(HIRE_DATE) "Oldest date"
FROM
	EMPLOYEES;

SELECT
	EMPLOYEE_ID,
	round(AVG(SALARY)) "AVg Salary"
FROM
	EMPLOYEES
GROUP BY
	EMPLOYEE_ID;

SELECT
	DEPARTMENT_ID,
	COUNT(COMMISSION_PCT) "count"
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID;

SELECT
	DEPARTMENT_ID,
	MAX(SALARY) "Max salary"
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID
ORDER BY
	DEPARTMENT_ID;

SELECT
	DEPARTMENT_ID,
	MIN(SALARY) "min salary"
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID
HAVING
	MIN(SALARY) < 7000;

SELECT
	DEPARTMENT_ID,
	COUNT(JOB_ID)
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID
ORDER BY
	DEPARTMENT_ID;

SELECT
	FIRST_NAME
FROM
	EMPLOYEES
WHERE
	JOB_ID = & id;

SELECT
	DEPARTMENT_ID,
	MAX(SALARY) - MIN(SALARY) "diffrence"
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID;

SELECT
	DEPARTMENT_ID,
	COUNT(MANAGER_ID)
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID;

SELECT
	MANAGER_ID,
	MIN(SALARY)
FROM
	EMPLOYEES
WHERE
	MANAGER_ID IS NOT NULL
GROUP BY
	MANAGER_ID
HAVING
	MIN(SALARY) > 6000
ORDER BY
	MIN(SALARY)
	DESC;

SELECT
	DEPARTMENT_ID,
	COUNT(to_char(HIRE_DATE, 'yyyy'))
FROM
	EMPLOYEES
GROUP BY
	DEPARTMENT_ID
HAVING
	COUNT(to_char(HIRE_DATE, 'yyyy'))
	in(1995, 1996, 1997, 1998);



















