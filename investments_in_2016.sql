select round(sum(tiv_2016),2) as 'TIV_2016' from insurance where pid not in
(select i1.pid from 
(select pid,tiv_2015,tiv_2016,lat,lon from insurance) i1 inner join 
(select pid,tiv_2015,tiv_2016,lat, lon from insurance) i2 on ((i1.lat=i2.lat and i1.lon=i2.lon) and i1.pid!=i2.pid)) 
and pid in 
(select i1.pid from 
(select pid,tiv_2015,tiv_2016,lat,lon from insurance) i1 inner join 
(select pid,tiv_2015,tiv_2016,lat, lon from insurance) i2 on (i1.tiv_2015=i2.tiv_2015 and i1.pid!=i2.pid))
