select name, bonus from employee left outer join bonus on (employee.empid=bonus.empid) where bonus<1000 or bonus is null;
