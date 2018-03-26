INSERT INTO locations (`street_address`,
`postal_code`,
`city`,
`state_province`,
`country_id`) SELECT
`street_address`,
`postal_code`,
`city`,
`state_province`,
`country_id` FROM report WHERE CITY IS NOT NULL;