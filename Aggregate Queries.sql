-- Common Aggregate Functions

select count(name)
from produtos;

select sum(lucros)
from produtos;

select avg(lucros)
from produtos;

select min(lucros)
from produtos;

select max(lucros)
from produtos;

-- GROUP BY and HAVING Clauses

select categoria, avg(lucros)
from produtos
group by categoria;

select categoria, max(lucros) as "maxlucros"
from produtos
group by categoria
having maxlucros > 500;
