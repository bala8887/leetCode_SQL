select ifnull(round(s.s_count/f.f_count,2),0) as 'accept_rate' from 
(select count(distinct sender_id,send_to_id) as f_count from friend_request) f,
(select count(distinct requester_id,accepter_id) as s_count from request_accepted) s
