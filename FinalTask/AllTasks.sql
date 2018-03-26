Use hr;
/*INSERT INTO locations (street_address, postal_code, city, state_province,country_id)
SELECT distinct
lc.street_address,
lc.postal_code,
lc.city,
lc.state_province,
lc.country_id
FROM report lc
where lc.street_address is not null
AND lc.postal_code is not null
AND lc.city is not null 
AND lc.state_province is not null
AND lc.country_id is not null;

insert into departments(department_name)
select distinct department_name
from report
where (department_name is not null);

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
*/
set @id = 0;
insert into  `locations` (street_address, postal_code, city, state_province, country_id) select DISTINCT  street_address, postal_code, city, state_province, country_id from REPORT where city is not null;

select * from `locations`;

set @id=0;
insert into  departments(DEPARTMENT_NAME) select distinct DEPARTMENT_NAME from REPORT where DEPARTMENT_NAME is not null;

insert into employees
( first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct) 
select distinct  first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct
from report 
where last_name is not null and hire_date is not null  and salary is not null and job_id is not null and email is not null;

UPDATE `employees`
SET `salary` = `salary` + 100
WHERE `job_id` NOT LIKE '%MGR' AND `job_id` NOT LIKE '%MAN';

UPDATE `employees`
SET `email`=concat(left(`first_name`,5),left(`last_name`, 5));

