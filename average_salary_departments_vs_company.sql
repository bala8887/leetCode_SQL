select a.pay_month as 'pay_month',a.department_id,if(a.salary>b.salary,'higher',if( a.salary<b.salary,'lower','same')) as 'comparison' from
(select e.department_id,avg(s.amount) as 'salary',substring(s.pay_date,1,7) as 'pay_month' from salary s inner join employee e on (e.employee_id=s.employee_id) group by e.department_id,substring(s.pay_date,1,7)) a inner join
(select avg(s.amount) as 'salary',substring(s.pay_date,1,7) as 'pay_month' from salary s group by substring(s.pay_date,1,7)) b on (a.pay_month=b.pay_month) 
#order by pay_month desc,department_id
