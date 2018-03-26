insert INTO employees(first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct)
select distinct 
FIRST_NAME,
LAST_NAME,
EMAIL is null,
PHONE_NUMBER,
HIRE_DATE,
JOB_ID,
SALARY,
COMMISSION_PCT
from report;
