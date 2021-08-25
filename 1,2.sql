select pilot_id
from Pilots
join Flights on pilot_id = first_pilot_id
join Planes on Flights.plane_id = Planes.plane_id
where cargo_flg = 0
and flight_dt >= '2021/1/1'
group by pilot_id
order by sum(quantity) desc
limit 10
