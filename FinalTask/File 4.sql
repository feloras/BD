UPDATE `employees`
SET `salary` = `salary` + 100
WHERE `job_id` NOT LIKE '%MGR' AND `job_id` NOT LIKE '%MAN';
