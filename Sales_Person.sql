select distinct s.name from salesperson s left outer join orders o on (s.sales_id=o.sales_id) 
where not exists (select 1 from company c where c.name='RED' and c.com_id in (select o1.com_id from orders o1 where o1.sales_id=o.sales_id)) order by -o.sales_id;
