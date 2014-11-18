select s.name,sum(f.7d-j.7d) diff_7d,sum(f.30d-j.30d) diff_30d 
from fares_feb1 f
join fares_jan18 j  on f.remote=j.remote
join stations s on f.station = s.name
where s.line='Broadway'
group by s.name;
