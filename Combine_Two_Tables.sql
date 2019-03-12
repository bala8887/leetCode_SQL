select p.firstname as 'FirstName',p.lastname as 'LastName',a.city as 'City',a.state as 'State' from person p left outer join address a on (p.personid=a.personid)
