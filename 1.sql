select name
from Pilots
where pilot_id in (select distinct second_pilot_id from Flights where destination = 'Шереметьево' and flight_dt >= '2021/08/01' and flight_dt < '2021/09/01')
