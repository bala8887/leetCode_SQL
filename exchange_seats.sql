select id,student from 
(select if(mod(id,2)=1,id+1,id-1) as id,student from seat where id<(select if(mod(max(id),2)=1,max(id),max(id)+1) from seat)
union
select id,student from seat where id=(select if(mod(max(id),2)=1,max(id),max(id)+1) from seat)) s order by id,student
