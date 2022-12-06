drop table TEAMS;

create table teams
(
project_id number(6) not null ,
employee_id number(6) not null ,
constraint teams_project_fk foreign key (project_id) references PROJECTS(PROJECT_ID),
constraint teams_emplyee_fk foreign key (employee_id) references EMPLOYEES(EMPLOYEE_ID)
)

drop table TEAMS;

create table teams
(
project_id number(6) not null ,
employee_id number(6) not null ,
constraint teams_project_fk foreign key (project_id) references PROJECTS(PROJECT_ID) on delete cascade ,
constraint teams_emplyee_fk foreign key (employee_id) references EMPLOYEES(EMPLOYEE_ID)  on delete cascade
)

drop table TEAMS;

create table teams
(
project_id number(6) not null ,
employee_id number(6) not null ,
constraint teams_project_fk foreign key (project_id) references PROJECTS(PROJECT_ID) on delete set null ,
constraint teams_emplyee_fk foreign key (employee_id) references EMPLOYEES(EMPLOYEE_ID)  on delete set null
)