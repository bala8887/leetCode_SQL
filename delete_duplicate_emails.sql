delete from person where id not in (select a.id from (select min(id) as id,email from person group by email) a)
