select round(min(sqrt(pow((a.x-b.x),2)+pow((a.y-b.y),2))),2) as 'shortest' from
(select x,y from point_2d) a inner join
(select x,y from point_2d) b on (a.x!=b.x or a.y!=b.y)
