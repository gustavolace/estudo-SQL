-- DDL CREATE, DROP, ALTER, TRUNCATE, RENAME

create table employee(
	id int primary key auto_increment,
	name varchar(255),
	email varchar(255),
    phone char(11)
);

create table teste (
	teste varchar(255)
);

alter table teste add teste2 varchar(255);
alter table teste drop column teste;
alter table teste modify column teste2 int(255);
alter table define add constraint checknull check (teste2 is null); -- check, primary key, not null, etc...

truncate table teste;
rename table teste to define;


-- DML INSET, SELECT, UPDATE, DELETE 

SELECT COLUMN_NAME AS "Column", DATA_TYPE AS "Type"
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'teste' AND COLUMN_NAME = 'teste2';

INSERT INTO employee (name, email, phone) VALUES
('João Silva', 'joao@example.com', '123456789'),
('Maria Santos', 'maria@example.com', '987654321'),
('Pedro Oliveira', 'pedro@example.com', '456789123'),
('Ana Costa', 'ana@example.com', '789123456'),
('Carlos Pereira', 'carlos@example.com', '321654987');

insert into employee (name, email)
select name, email
from employee
where id >=4;

update employee
set phone = null
where id =5;

delete from employee where id = 7;

select * from employee where phone is null;
select * from employee where phone;
select * from employee;
