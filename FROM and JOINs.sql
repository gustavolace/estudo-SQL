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

-- CROSS JOINs in products

SELECT category, max(price)
from products
group by category

SELECT p.product_name, p.price, s.sale_date, s.sale_amount
FROM products AS p
right join sales AS s
on s.product_id = p.product_id;

SELECT p.product_id, SUM(p.price * s.sale_amount) AS total_sales_amount
FROM products AS p
JOIN sales AS s ON p.product_id = s.product_id
GROUP BY p.product_id;

SELECT p.product_name, p.product_id, p.category, s.sale_amount, s.sale_date from products as p
cross join sales as s
order by product_id DESC;

SELECT p.product_name, p.category, s.sale_amount, s.sale_date 
from products as p
left join sales as s
on p.product_id = s.product_id

select p.price as "maior preco vendido"
from products as p
where p.price = (SELECT max(s.sale_amount) from sales as s)
