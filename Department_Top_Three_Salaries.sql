select d.name as 'Department',e.name as 'Employee',e.Salary from employee e inner join department d on (e.departmentid=d.id) where  3 >
(select count(distinct salary) from employee where salary>e.salary and departmentid=e.departmentid) order by Department, Salary desc
