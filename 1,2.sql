SELECT name, count(promocodes.promocode_id) AS total
FROM orders JOIN promocodes ON orders.promocode_id = promocodes.promocode_id
GROUP BY name
ORDER BY count(promocodes.promocode_id) DESC
LIMIT 1