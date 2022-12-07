create or replace view vemplooyesdep60
as
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY, COMMISSION_PCT
from EMPLOYEES
where DEPARTMENT_ID = 60;

select *
from vemplooyesdep60;


create or replace view vdepartaments_total
            (
             departament_id, departament_name, minsal, maxsal, avgsal)
as
select e.DEPARTMENT_ID, d.DEPARTMENT_NAME, MIN(e.salary), max(e.salary), avg(e.salary)
from EMPLOYEES e
         join DEPARTMENTS d on (e.DEPARTMENT_ID = d.DEPARTMENT_ID)
    group by e.DEPARTMENT_ID, d.DEPARTMENT_NAME;

select * from vdepartaments_total;