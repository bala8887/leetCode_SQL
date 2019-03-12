select a1.name as 'America', a2.name as 'Asia', e1.name as 'Europe' from 
(select name,@num:=@num+1 as 'n1' from student,(select @num:=0) n where continent='America' order by name) a1 left outer join
(select name,@num1:=@num1+1 as 'n2' from student,(select @num1:=0) n where continent='Asia' order by name) a2 on (a1.n1=a2.n2) left outer join
(select name,@num2:=@num2+1 as 'n3' from student,(select @num2:=0) n where continent='Europe' order by name) e1 on (a1.n1=e1.n3)
