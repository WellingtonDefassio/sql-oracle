
drop index employess_first_and_last_name;

select * from EMPLOYEES where LAST_NAME = 'Himuro' and FIRST_NAME = 'Guy'

--explain plano

create index employess_last_name
on EMPLOYEES(LAST_NAME);

create index employess_first_and_last_name
on EMPLOYEES(FIRST_NAME, LAST_NAME);

alter index employess_first_and_last_name rebuild ;

select ix.INDEX_NAME, ix.INDEX_TYPE, ix.UNIQUENESS, ix.STATUS, ic.COLUMN_POSITION, ic.COLUMN_NAME from USER_INDEXES ix join USER_IND_COLUMNS ic on (ix.INDEX_NAME = ic.INDEX_NAME) and (ix.TABLE_NAME = ic.TABLE_NAME)
where  ix.TABLE_NAME = 'EMPLOYEES' order by  ix.INDEX_NAME, ic.COLUMN_POSITION;