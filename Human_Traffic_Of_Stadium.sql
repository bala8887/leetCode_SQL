select * from 
(select a1.id,a1.date,a1.people from stadium a1
where ((exists (select 1 from stadium where id=a1.id-1 and people>100)) and (exists (select 1 from stadium where id=a1.id-2 and people>100))) or ((exists (select 1 from stadium where id=a1.id+1 and people>100)) and (exists (select 1 from stadium where id=a1.id+2 and people>=100))) or ((exists (select 1 from stadium where id=a1.id-1 and people>=100)) and (exists (select 1 from stadium where id=a1.id+1 and people>=100)))) a2 where people>=100
