select w2.id from
(select id,recorddate, temperature from weather) w1 inner join 
(select id,recorddate, temperature from weather) w2 on (datediff(w2.recorddate,w1.recorddate)=1 and w2.temperature>w1.temperature)
