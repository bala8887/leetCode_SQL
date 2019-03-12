select c.seat_id from cinema c where (exists (select seat_id from cinema where seat_id=c.seat_id-1 and free=1) or exists(select seat_id from cinema where seat_id=c.seat_id+1 and free=1)) and c.free=1
