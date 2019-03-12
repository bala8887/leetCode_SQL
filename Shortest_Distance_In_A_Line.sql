select min(abs(p1.x-p2.x)) as shortest from 
(select x from point) p1 inner join
(select x from point) p2 on (p1.x!=p2.x)
