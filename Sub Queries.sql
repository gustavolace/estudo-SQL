-- Scarlar subquery, single value
 select e.name, e.email 
 from employee as e
 where e.id = (select id from produtos where id = e.id);
 
 -- Row subquery, single row of two or more values
 select * from employee
 where (name ,email) = (select max(name), max(email) from employee);
 
 -- Column subquery, single column

 select name,age 
 from students
 where (name, age) in (select name, age from students);
 
 -- Table subquery, rows and columns
 
select sub.student_name
from (select s.student_id, s.student_name from students s where s.student_id > 1) sub;
 
 select sub.student_name from (select s.student_name from students as s) sub; 
 
 -- Examples of nested subqueries
 
SELECT CustomerName,Country
FROM Customers
WHERE CustomerID IN
    (SELECT CustomerID 
     FROM Orders
     WHERE Amount>(SELECT AVG(Amount) 
                    FROM Orders));
 
SELECT DISTINCT c.CustomerName, c.Country
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.Amount > (SELECT AVG(Amount) FROM Orders); 

-- Examples of correlated subqueries

SELECT e1.employee_name, e1.salary
FROM employee e1
WHERE salary > 
   (SELECT AVG(salary)
   FROM employee e2
   WHERE e1.department = e2.department);
 