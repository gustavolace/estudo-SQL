-- FROM
SELECT * FROM user.produtos;
select * from employee;

select  produtos.name, employee.id, employee.name
from produtos, employee
where employee.id = produtos.id; 

select  p.name, e.id, e.name
from produtos as p, employee as e
where e.id = p.id; 

-- JOIN

select p.name, e.name, p.id
from produtos as p 
inner join employee as e -- INNER
on p.id = e.id;

select p.name, e.name, p.id
from produtos as p 
left join employee as e -- LEFT
on p.id = e.id;

select p.name, e.name, p.id
from produtos as p 
right join employee as e -- RIGHT
on p.id = e.id;

select p.name, e.name, p.id
from produtos as p 
full join employee as e -- FULL
on p.id = e.id;

select p.name, e.name, p.id
from produtos as p, employee as e -- SELF
where p.id = e.id