USE classicmodels;

SHOW TABLES;

select * from employees;

#problem 1
SELECT employeeNumber,
       firstName,
       lastName,
       50000 AS Salary,
       50000 * 0.10 AS BonusAmount,
       50000 + (50000 * 0.10) AS TotalSalary
FROM employees;

#problem 2
SELECT productName,
       buyPrice AS OriginalBuyPrice,
       buyPrice + 500 AS NewBuyPrice
FROM products;

#problem 3
SELECT productName,
       buyPrice,
       MSRP,
       (MSRP - buyPrice) AS EstimatedProfit
FROM products;


#problem 4
SELECT *
FROM products
WHERE buyPrice > 50;


##problem 5
SELECT *
FROM orderdetails
WHERE quantityOrdered >= 40;


#problem 6
SELECT *
FROM customers
WHERE country = 'USA';

#problem 7
SELECT *
FROM customers
WHERE NOT country = 'USA';

#problem 8
SELECT *
FROM customers
WHERE country IN ('USA', 'France', 'Germany');

#problem 9
SELECT *
FROM products
WHERE productLine IN ('Classic Cars', 'Motorcycles', 'Planes');

#problem 10
SELECT *
FROM orderdetails
WHERE quantityOrdered > 30
  AND priceEach > 100;
  
 #problem 10 
select *
from customers
where not 'USA';

#problem 11
select *
from customers
where country in ('USA','Germany','France');


#problem 12
select * from products
where productLine in  ('Classic cars','Motorcycles','Planes');


#problem 13
select * from employees
where officeCode in (1,4,7);


#problem 14
select * from products
where buyPrice  between 30 and 80;


#problem 15
select * from orderdetails
where quantityOrdered between 20 and 50;


#problem 16
select * from employees
where officeCode between 2 and 5;


#problem 17
select * from customers
where customerName like 'A%' ;


#problem 18
select * from products
where productName like 'Ford';


#problem 19
select * from customers
where country like '%land';


#problem 20
select * from products
where productName like '1969%';


#problem 21
select * from employees
where firstName like 'L%';


#problem 22
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A____%';










