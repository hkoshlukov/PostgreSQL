SELECT
2
    peak_name,
3
    RIGHT(peak_name, 4) AS positive_right,
4
    RIGHT(peak_name, -4)AS negative_right
5
FROM
6
    peaks;