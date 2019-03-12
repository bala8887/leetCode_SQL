select distinct o.num as 'ConsecutiveNums' from logs o where o.num=(select num from logs where num=o.num and id=o.id-1) and o.num=(select num from logs where num=o.num and id=o.id+1)
