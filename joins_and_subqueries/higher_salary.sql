SELECT
	COUNT(salary)
FROM 
	employees
WHERE salary > (SELECT AVG(salary) FROM employees)