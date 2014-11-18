select s.lat,s.lng,sum(ff) ff
from fares_jan18 f,stations s
where s.line='Broadway' and s.name=f.station
group by f.station
order by sum(ff) desc;
