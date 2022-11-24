select * from EMPLOYEES;
select EMPLOYEE_ID, FIRST_NAME, SALARY from EMPLOYEES;

select * from JOBS;

select * from DEPARTMENTS;
select DEPARTMENT_ID, DEPARTMENT_NAME from DEPARTMENTS;

select FIRST_NAME nome, LAST_NAME sobrenome, SALARY salario, (SALARY + 100) * 1.15 total from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME nome_completo, SALARY salario, (SALARY + 100) * 1.15 total from EMPLOYEES;

select distinct DEPARTMENT_ID, FIRST_NAME from EMPLOYEES;

select distinct  FIRST_NAME, LAST_NAME from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME nome, EMPLOYEE_ID from EMPLOYEES where DEPARTMENT_ID = 60;


select FIRST_NAME || ' ' || LAST_NAME nome, HIRE_DATE from EMPLOYEES where HIRE_DATE > '30/01/04';

select FIRST_NAME || ':' || SALARY nomeSalary from EMPLOYEES WHERE SALARY > 10000;

select FIRST_NAME || ':' || SALARY nomeSalary from EMPLOYEES WHERE SALARY between 10000 and 12000;

select FIRST_NAME, SALARY name from EMPLOYEES where SALARY in (10500, 10000, 9500)

select FIRST_NAME name from EMPLOYEES where FIRST_NAME like 'Sa%';

select FIRST_NAME, SALARY name from EMPLOYEES where SALARY not like '1_%';
select FIRST_NAME, SALARY name from EMPLOYEES where SALARY  like '1_%';

select FIRST_NAME from EMPLOYEES where MANAGER_ID is null;

select FIRST_NAME name, LAST_NAME sobrenome, SALARY salario from EMPLOYEES where SALARY > 9000 and FIRST_NAME like '_a%' and LAST_NAME like '_a%'

select LAST_NAME, JOB_ID, SALARY from EMPLOYEES where (JOB_ID = 'SA_REP' or JOB_ID = 'IT_PROG') and SALARY > 10000;

select FIRST_NAME || ' ' || LAST_NAME nome, SALARY, JOB_ID from EMPLOYEES order by SALARY desc;

select EMPLOYEE_ID, LAST_NAME, SALARY , DEPARTMENT_ID from EMPLOYEES where EMPLOYEE_ID = &EMPLOYEE_ID;
select EMPLOYEE_ID, LAST_NAME, SALARY , DEPARTMENT_ID from EMPLOYEES where JOB_ID = &JOB_ID;

define employee_id = 101;

select EMPLOYEE_ID, LAST_NAME, SALARY , DEPARTMENT_ID from EMPLOYEES where EMPLOYEE_ID = employee_id;

select FIRST_NAME || ' ' || LAST_NAME nome, SALARY, JOB_ID from EMPLOYEES where upper(LAST_NAME) = 'KING';
select FIRST_NAME || ' ' || LAST_NAME nome, SALARY, JOB_ID from EMPLOYEES where lower(FIRST_NAME) like 'a%';

select concat('Curso: ', 'introdução oracle') from dual;
select substr('introdução oracle 19c: ',11,11) from dual;
select length('introdução oracle 19c: ') from dual;
select instr('introdução oracle 19c: ', 'oracle') from dual;

select sysdate from dual;

select 350 * 1.5 soma1, 400 * 1.5 somaa2 from DUAL;
select sysdate - (5/24) menoscinco, sysdate - (1/24) menosum, sysdate - 3 from DUAL;

select sysdate, to_char(trunc(sysdate), 'DD/MM/YYYY') FROM DUAL;

