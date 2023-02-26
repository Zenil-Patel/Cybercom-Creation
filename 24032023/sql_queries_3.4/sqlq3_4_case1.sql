# SQL queries 3.4 case 1


create database CarDealership;

create table cars
(
	carId int,
    brand varchar(50),
    model varchar(50),
    year int,
    mileage int,
    price decimal(10,2),
    available bit,
    primary key (carId)
);

create table Customers
(
	customerId int,
    firstName varchar(50),
    lastName varchar(50),
    email varchar(100),
    phoneNumber varchar(20),
    primary key (customerId)
);


create table Sales
(
	saleId int,
    carId int,
    customerId int,
    saleDate date,
    salePrice decimal(10,2),
    primary key (saleId)
);

INSERT INTO cars (carId, brand, model, year, mileage, price, available)
VALUES (1, 'Toyota', 'Camry', 2018, 25000, 15000.00, 1),
       (2, 'Honda', 'Civic', 2019, 20000, 18000.00, 0),
       (3, 'Ford', 'Mustang', 2020, 10000, 30000.00, 1),
       (4, 'Chevrolet', 'Cruze', 2017, 30000, 12000.00, 0),
       (5, 'BMW', 'X5', 2021, 5000, 55000.00, 1),
       (6, 'Mercedes-Benz', 'C-Class', 2019, 15000, 35000.00, 1),
       (7, 'Audi', 'A4', 2020, 10000, 40000.00, 0),
       (8, 'Nissan', 'Altima', 2018, 20000, 14000.00, 1),
       (9, 'Kia', 'Sorento', 2021, 1000, 25000.00, 0),
       (10, 'Hyundai', 'Elantra', 2019, 18000, 13000.00, 1),
       (11, 'Toyota', 'Corolla', 2017, 35000, 11000.00, 0),
       (12, 'Honda', 'Accord', 2021, 5000, 22000.00, 1),
       (13, 'Ford', 'F-150', 2019, 25000, 45000.00, 1),
       (14, 'Chevrolet', 'Equinox', 2020, 12000, 18000.00, 0),
       (15, 'Tesla', 'Model S', 2022, 100, 85000.00, 1),
       (16, 'Honda', 'Civic', 2020, 25000, 19000.00, 1),
       (17, 'Toyota', 'Camry', 2021, 12000, 24000.00, 1),
       (18, 'Ford', 'Escape', 2019, 32000, 17000.00, 0),
       (19, 'Chevrolet', 'Equinox', 2022, 5000, 29000.00, 1),
       (20, 'Volkswagen', 'Passat', 2018, 45000, 14000.00, 0),
       (21, 'Nissan', 'Altima', 2021, 15000, 21000.00, 1),
       (22, 'Audi', 'A4', 2017, 55000, 18000.00, 0),
       (23, 'BMW', 'X5', 2022, 10000, 45000.00, 1),
       (24, 'Mercedes-Benz', 'GLC', 2019, 28000, 32000.00, 1),
       (25, 'Hyundai', 'Tucson', 2021, 8000, 22000.00, 1);


INSERT INTO Customers (customerId, firstName, lastName, email, phoneNumber)
VALUES 
  (1, 'John', 'Doe', 'johndoe@example.com', '555-1234'),
  (2, 'Jane', 'Smith', 'janesmith@example.com', '555-5678'),
  (3, 'Bob', 'Johnson', 'bobjohnson@example.com', '555-9012'),
  (4, 'Sara', 'Lee', 'saralee@example.com', '555-3456'),
  (5, 'Tom', 'Jones', 'tomjones@example.com', '555-7890'),
  (6, 'Anna', 'Nguyen', 'annanguyen@example.com', '555-2345'),
  (7, 'Mike', 'Brown', 'mikebrown@example.com', '555-6789'),
  (8, 'Emily', 'Davis', 'emilydavis@example.com', '555-0123'),
  (9, 'David', 'Wilson', 'davidwilson@example.com', '555-4567'),
  (10, 'Karen', 'Taylor', 'karentaylor@example.com', '555-8901'),
  (11, 'Michael', 'Anderson', 'michaelanderson@example.com', '555-2345'),
  (12, 'Sarah', 'Martin', 'sarahmartin@example.com', '555-6789'),
  (13, 'Chris', 'Thomas', 'christhomas@example.com', '555-0123'),
  (14, 'Lisa', 'Clark', 'lisaclark@example.com', '555-4567'),
  (15, 'Brian', 'Wilson', 'brianwilson@example.com', '555-8901');

INSERT INTO Sales (saleId, carId, customerId, saleDate, salePrice)
VALUES 
  (1, 1, 2, '2022-01-15', 25000.00),
  (2, 3, 5, '2022-01-20', 32000.00),
  (3, 5, 1, '2022-02-05', 18500.00),
  (4, 7, 4, '2022-02-10', 21000.00),
  (5, 2, 6, '2022-02-15', 27000.00),
  (6, 8, 3, '2022-03-01', 24000.00),
  (7, 10, 2, '2022-03-05', 30000.00),
  (8, 12, 1, '2022-03-10', 28000.00),
  (9, 13, 5, '2022-03-15', 19500.00),
  (10, 16, 3, '2022-04-01', 32000.00),
  (11, 17, 4, '2022-04-05', 19000.00),
  (12, 19, 1, '2022-04-10', 22500.00),
  (13, 21, 6, '2022-05-01', 28500.00),
  (14, 23, 2, '2022-05-05', 31000.00),
  (15, 25, 3, '2022-05-10', 26000.00);
  
  alter table sales
  add foreign key (carId) references cars(carId);
  
  alter table sales
  add foreign key (customerId) references Customers(customerId);
  
# 1. Retrieve the top 10 most expensive cars from the Cars table.

select * from cars
order by price desc
limit 10;

# 2. Retrieve the average price of all available cars from the Cars table.

select avg(price) average_price from cars;

# 3. Retrieve the list of customers who have purchased a car, along with the total number of cars each customer has purchased.

select s.customerId, c.firstName, count(s.customerId) from 
customers c join sales s 
on c.customerId = s.customerId
group by s.customerId;

# 4. Retrieve the list of customers who have not yet made a purchase.

select customerId from customers 
where customerId not in 
(select customerId from sales);

# 5. Insert a new car into the Cars table with the following information: Brand='Toyota', Model='Corolla', Year=2022, Mileage=0, Price=20000, Available=1.

insert into cars values (26, 'Toyota', 'Corolla', 2022, 0, 20000, 1); 
select * from cars 
where brand = 'toyota' and model = 'corolla';

# 6. Update the price of all cars in the Cars table by adding 10% to their current price.

update cars
set price = price * 1.1;

select * from cars;

# 7. Delete all sales from the Sales table that occurred before January 1, 2022.

insert into sales values 
(16, 1, 2, '2020-12-12', 55000);

delete from sales
where saleDate < '2022-01-01';


select * from sales;


