select name as 'Name' from employee where id in 
(select managerid from employee group by managerid having count(1)>=5)
