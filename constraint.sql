alter table define
add constraint checknull check (teste2 is null);

select * from define;

SELECT constraint_name
FROM information_schema.table_constraints
WHERE table_name = 'define';

select * from information_schema.table_constraints;

SHOW CREATE TABLE define;

select * from employee;
select distinct name from employee order by name desc;