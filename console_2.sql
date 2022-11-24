select FIRST_NAME, to_char(HIRE_DATE, 'DD/MM/YYYY') ADMISSÃO from EMPLOYEES;

SELECT sysdate ,to_char(sysdate, 'DD/MM/YYYY') data from dual;

select FIRST_NAME, LAST_NAME, to_char(SALARY, 'L99G999G999D99') salary, to_char(salary * 1.5, 'L99G999G999D99') bonus from EMPLOYEES;


select FIRST_NAME, LAST_NAME from EMPLOYEES where HIRE_DATE = to_date('17-06-2003', 'DD-MM-YYYY');


select coalesce(null, null, '3'),coalesce(null, '2', '3'), coalesce('1', '2', '3') from DUAL;

select min(HIRE_DATE), max(HIRE_DATE) from EMPLOYEES;

select * from EMPLOYEES;

select count(JOB_ID) from EMPLOYEES WHERE JOB_ID = 'ST_CLERK';

select DEPARTMENT_ID, avg(SALARY) from EMPLOYEES group by DEPARTMENT_ID;

select JOB_ID, DEPARTMENT_ID, max(SALARY), count(*) from EMPLOYEES group by JOB_ID, DEPARTMENT_ID order by max(SALARY) desc;

select avg(SALARY) from EMPLOYEES;
select DEPARTMENT_ID, avg(SALARY) from EMPLOYEES group by DEPARTMENT_ID;

-- select DEPARTMENT_ID, max(SALARY) from EMPLOYEES where max(SALARY) > 10000 group by DEPARTMENT_ID;
select DEPARTMENT_ID, max(SALARY) from EMPLOYEES group by DEPARTMENT_ID having max(SALARY) > 10000;

select JOB_ID, count(*) from EMPLOYEES  group by JOB_ID having count(*)> 10 and count(*) <> 20;
select JOB_ID, count(*) from EMPLOYEES where JOB_ID <> 'SA_REP' group by JOB_ID having count(*)> 10 and count(*) <> 20;

select max(avg(SALARY)) from EMPLOYEES group by DEPARTMENT_ID;


select e.FIRST_NAME, d.* from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select DEPARTMENTS.DEPARTMENT_ID, DEPARTMENT_NAME, CITY from DEPARTMENTS natural join LOCATIONS;

