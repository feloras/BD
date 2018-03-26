UPDATE `employees`
SET `email`=left(`first_name`,5)+left(`last_name`, 5);