select class from (select distinct student,class from courses) c group by class having count(class)>=5
