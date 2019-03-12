select Request_at as Day,round(sum(case when Status like 'cancelled_%' then 1 else 0 end)/coalesce(count(*),0),2) as "Cancellation Rate" from
Trips where Client_Id in
(select Users_Id from Users where Banned='No' and Role='Client') and Request_at between '2013-10-01' and '2013-10-03' group by Request_at
