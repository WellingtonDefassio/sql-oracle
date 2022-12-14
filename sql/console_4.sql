
SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.LAST_NAME, j.GRADE_LEVEL, j.LOWEST_SAL, j.HIGHEST_SAL FROM EMPLOYEES e join JOB_GRADES j on NVL(e.SALARY, 0) between j.LOWEST_SAL and j.HIGHEST_SAL order by e.SALARY;

select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_NAME, J.JOB_TITLE, JG.LOWEST_SAL from EMPLOYEES E
    join DEPARTMENTS D on e.DEPARTMENT_ID = d.DEPARTMENT_ID
    JOIN JOBS J ON E.JOB_ID = J.JOB_ID
    JOIN JOB_GRADES JG ON NVL(E.SALARY, 0) BETWEEN JG.LOWEST_SAL AND JG.HIGHEST_SAL;

select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM EMPLOYEES E LEFT OUTER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM EMPLOYEES E RIGHT OUTER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM EMPLOYEES E full outer join  DEPARTMENTS D on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--PADRÃO ORACLE
select e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_NAME, d.LOCATION_ID from  EMPLOYEES e, DEPARTMENTS d where e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_NAME, d.LOCATION_ID, e.SALARY, j.JOB_ID, l.CITY
from EMPLOYEES e, DEPARTMENTS d, JOBS j, LOCATIONS l
where (e.DEPARTMENT_ID = d.DEPARTMENT_ID)
  AND (e.JOB_ID = j.JOB_ID)
  AND (d.LOCATION_ID = l.LOCATION_ID)
  AND (e.SALARY > 4000) and (j.JOB_ID <> 'IT_PROG');


select E.FIRST_NAME, E.LAST_NAME, E.SALARY, JG.GRADE_LEVEL from EMPLOYEES E, JOB_GRADES JG WHERE (NVL(E.SALARY, 0) BETWEEN  JG.LOWEST_SAL AND JG.HIGHEST_SAL)

--OUTHER JOIN

select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM EMPLOYEES E ,DEPARTMENTS D where E.DEPARTMENT_ID(+) = D.DEPARTMENT_ID;

select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM EMPLOYEES E ,DEPARTMENTS D where E.DEPARTMENT_ID = D.DEPARTMENT_ID(+);

--SELF JOIN

select empregado.FIRST_NAME, empregado.LAST_NAME, gerente.FIRST_NAME, gerente.LAST_NAME from EMPLOYEES empregado, EMPLOYEES gerente
where (empregado.MANAGER_ID = gerente.EMPLOYEE_ID(+));

