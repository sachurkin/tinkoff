select pilot_id
from
((select pilot_id, count(flight_id) as x
from Pilots
join Flights on pilot_id = first_pilot_id
join Planes on Flights.plane_id = Planes.plane_id
where age > 45
and cargo_flg = 1
group by pilot_id) as A
join
(select pilot_id, count(flight_id) as x
from Pilots
join Flights on pilot_id = second_pilot_id
join Planes on Flights.plane_id = Planes.plane_id
where age > 45
and cargo_flg = 1
group by pilot_id) as B
on A.pilot_id = B.pilot_id)
where A.x + B.x > 30
