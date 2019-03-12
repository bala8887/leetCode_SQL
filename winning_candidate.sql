select name from candidate where id = (select candidateid from vote group by candidateid order by count(1) desc limit 1)
