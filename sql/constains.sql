drop table PROJECTS;

create table projects (
project_id number(6) not null constraint projects_project_id_pk primary key ,
project_code varchar2(10) not null ,
project_name varchar2(100) not null ,
department_id number(4) not null ,
creation_date date default sysdate not null ,
start_date date,
end_date date,
status varchar2(20) not null ,
priority varchar2(10) not null ,
budget number(11,2) not null ,
description varchar2(400) not null );


drop table PROJECTS;

create table projects (
project_id number(6) not null  ,
project_code varchar2(10) not null ,
project_name varchar2(100) not null ,
department_id number(4) not null ,
creation_date date default sysdate not null ,
start_date date,
end_date date,
status varchar2(20) not null ,
priority varchar2(10) not null ,
budget number(11,2) not null ,
description varchar2(400) not null,
 constraint projects_project_id_pk primary key (project_id, project_code)); -- todas as primary keys


