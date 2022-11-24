
SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.LAST_NAME, j.GRADE_LEVEL, j.LOWEST_SAL, j.HIGHEST_SAL FROM EMPLOYEES e join JOB_GRADES j on NVL(e.SALARY, 0) between j.LOWEST_SAL and j.HIGHEST_SAL order by e.SALARY;