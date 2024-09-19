Use new_schema;
select c.cust_name,c.city as "cust_city",s.name AS "Salesman",s.city as "salesman_city" ,s.commission
from customer c 
Inner join salesman s on  s.salesman_id =c.salesman_id 
where s.commission >0.12 AND Trim(c.city) !=Trim(s.city);