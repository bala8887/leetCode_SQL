select requester_id as id,ifnull(count1,0)+ifnull(count2,0) as num from 
(select ifnull(count(1),0) as count1,requester_id from request_accepted group by requester_id) r1 left outer join (select ifnull(count(1),0) as count2,accepter_id from request_accepted group by accepter_id) r2 on (r1.requester_id=r2.accepter_id) order by num desc limit 1
