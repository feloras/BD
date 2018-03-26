insert into departments(department_name)
select distinct department_name
from report
where (department_name is not null);