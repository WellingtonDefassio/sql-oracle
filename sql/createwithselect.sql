select *
from user_objects
order by OBJECT_TYPE


create table projects
(
    project_id    number(6)            not null,
    project_code  varchar2(10)         not null,
    project_name  varchar2(100)        not null,
    CREATION_DATE date default sysdate not null,
    START_DATE    date,
    END_DATE      date,
    status        varchar2(20)         not null,
    priority      varchar2(10)         not null,
    budget        number(11, 2)        not null,
    description   varchar2(400)        not null
);

select * from projects;

create table teams
(
project_id number(6) not null ,
employee_io number(6) not null
);

select EMPLOYEE_ID, FIRST_NAME, ROWID, length(rowid) from EMPLOYEES where ROWID = 'AAASfcAAMAAAADLAAA';

select table_name from USER_TABLES;

select object_name, OBJECT_type from user_objects where OBJECT_TYPE = 'TABLE';

create table employees_department60
as select  EMPLOYEE_ID, LAST_NAME, SALARY * 12 annsal, HIRE_DATE from EMPLOYEES where DEPARTMENT_ID = 60;