-- Question 1
-- Step 1
create salesdb;

-- Step 2
use salesdb;

create table ProductDetail(
 OrderID int primary key auto_increment,
 CustomerName varchar (100),
 Products varchar (100)
 );

insert into ProductDetail(OrderID, CustomerName, Products)
values (101,"John Doe", "Laptop, Mouse"),
(102, "Jane Smith", "Tablet, Keyboard, Mouse"),
(103, "Emily Clark","Phone");

select * from  ProductDetail;

-- Step 3
alter table ProductDetail
drop column Products;

-- Step 4
use salesdb;

create table Products(
id int primary key auto_increment,
name varchar (100),
OrderID int,
foreign key (OrderID) references ProductDetail(OrderID)
);

insert into Products(name, OrderID)
values ("Laptop", "101"),
("Mouse", "101"),
("Tablet", "102"),
("Keyboard", "102"),
(" Mouse", "102"),
("Phone", "103");

select * from Products;


-- Question 2
CREATE DATABASE Orders;

USE orders;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

-- Insert data into the Orders table
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Create the OrderDetails table
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert data into the OrderDetails table
INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);