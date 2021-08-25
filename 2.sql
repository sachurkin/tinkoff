SELECT office_name FROM consumption JOIN buildings ON consumption.coffee_point_id = buildings.coffee_point_id
GROUP BY office_id
HAVING SUM(cookies) < 1000
ORDER BY SUM(cookies) DESC
LIMIT 10
