SELECT
	e.employee_id,
	CONCAT(e.first_name, ' ',e.last_name) AS full_name,
	d.department_id,
	d.name
FROM
	employees AS e
JOIN
	departments as d
ON d.manager_id = e.employee_id
Order by e.employee_id
LIMIT 5