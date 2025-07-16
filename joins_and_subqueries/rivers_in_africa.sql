SELECT
	c.country_name,
	r.river_name
FROM
	countries AS c
FULL JOIN
	countries_rivers AS cr
ON
	cr.country_code = c.country_code
FULL JOIN
	rivers AS r
ON 
	r.id = cr.river_id
FULL JOIN
	continents AS co
ON
	co.continent_code = c.continent_code
WHERE
	co.continent_name = 'Africa'
ORDER BY
	c.country_name ASC
LIMIT 5