select d.name as 'Department',e.name as 'Employee',e.Salary from employee e inner join
(select departmentid,max(salary) as 'salary1' from employee group by departmentid) sub1 on (e.departmentid=sub1.departmentid and e.salary=sub1.salary1) inner join department d on (e.departmentid=d.id)
