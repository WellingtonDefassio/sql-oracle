
select max(EMPLOYEE_ID) from EMPLOYEES;

drop sequence EMPLOYEES_SEQ;

create sequence employess_seq
start with 250
increment by 1
nomaxvalue
nocache
nocycle;

select * from USER_SEQUENCES;

select employess_seq.nextval from DUAL;
select employess_seq.currval from DUAL;

