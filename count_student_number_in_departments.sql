select d.dept_name,sum(if(s.dept_id is null,0,1)) as 'student_number' from department d left outer join student s on (d.dept_id=s.dept_id) group by d.dept_name order by student_number desc, dept_name
