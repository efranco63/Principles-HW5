select s.name,sum(f.ff-j.ff) diff_feb1_jan18
from fares_feb1 f
join fares_jan18 j on f.remote=j.remote
join stations s on f.station = s.name
where s.line='Broadway'
group by s.name;
