SELECT
	mc.country_code,
	count(m.mountain_range)
FROM
	mountains_countries AS mc
JOIN
	mountains AS m
ON
	m.id = mc.mountain_id
WHERE
	mc.country_code IN ('BG', 'US', 'RU')
GROUP BY 
	mc.country_code
ORDER BY
	count(m.mountain_range) DESC