SELECT
	mc.country_code,
	m.mountain_range,
	p.peak_name,
	p.elevation
FROM
	mountains AS m
JOIN
	mountains_countries AS mc
ON
	mc.mountain_id = m.id
JOIN
	peaks AS p
ON
	p.mountain_id = mc.mountain_id
WHERE
	p.elevation > 2835
	AND
	mc.country_code = 'BG'
ORDER BY
	p.elevation DESC