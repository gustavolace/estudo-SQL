-- Constraints

create table Students (
	ID int not null, -- not null
    Name varchar(255) not null,
    Age int
);

Alter table Students add constraint unique_id unique (id) ; -- uniquee
Alter table Students add constraint pk Primary KEY (id) ; -- PK

Create table orders (
	OrderId int not null Primary key, -- PK
    OrderNumber int not null, -- NN
    ID int,
    foreign key (ID) references students(ID) -- FK
);

Alter table Students add constraint check_age CHECK(age>=18); -- CHECK
Alter table Students add City varchar(255) default "Unknow"; -- DEFAULT

Create index idx_name -- INDEX Constraint
on Students (Name);

-- -------------------------------------------- --

-- pk

alter table Students 
add primary key (id);

alter table Students
drop primary key;

Create table Customers (
	CustomerID int,
    StoreID int,
    Constraint pk_Customer_StoreID primary key (customerId, Storeid)

);

-- fk

Alter table orders 
add foreign key (ID)
references students (ID);

-- unique

Alter table Students 
add unique (name, city);

-- not null

Alter table Students 
modify name varchar(255) not null;

-- CHECK

ALTER TABLE Employees
ADD CONSTRAINT CHK_EmployeeAge CHECK (Age >= 21 AND Age <= 60);







