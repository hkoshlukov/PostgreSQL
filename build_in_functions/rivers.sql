CREATE VIEW view_river_info
AS
SELECT
	CONCAT_WS(
		' ',
		river_name,
		'flows into the',
		outflow,
		'and is',
		"length",
		'kilometers long.'
	) AS "RIVER INFORMATION"
FROM 
	rivers
ORDER BY
	river_name;