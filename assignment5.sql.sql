-- SQL Logic Builder - Task 5
USE classicmodels;

SELECT SUM(amount) AS TotalSales FROM payments;

SELECT COUNT(customerNumber) AS TotalCustomers,
MAX(creditLimit) AS HighestCreditLimit,
MIN(creditLimit) AS LowestCreditLimit,
AVG(creditLimit) AS AverageCreditLimit
FROM customers;

SELECT MAX(buyPrice) AS HighestBuyPrice,
MIN(buyPrice) AS LowestBuyPrice,
AVG(buyPrice) AS AverageBuyPrice
FROM products;

SELECT country, COUNT(customerNumber) AS TotalCustomers FROM customers GROUP BY country;
SELECT officeCode, COUNT(employeeNumber) AS TotalEmployees FROM employees GROUP BY officeCode;
SELECT productLine, COUNT(productCode) AS TotalProducts FROM products GROUP BY productLine;

SELECT customerName, creditLimit FROM customers ORDER BY creditLimit DESC;
SELECT productName, buyPrice FROM products ORDER BY buyPrice ASC;
SELECT firstName,lastName FROM employees ORDER BY firstName,lastName;

SELECT customerName,creditLimit FROM customers ORDER BY creditLimit DESC LIMIT 5;
SELECT productName,buyPrice FROM products ORDER BY buyPrice ASC LIMIT 10;
SELECT orderNumber,orderDate FROM orders ORDER BY orderNumber DESC LIMIT 7;

SELECT country,COUNT(customerNumber) AS TotalCustomers FROM customers GROUP BY country HAVING COUNT(customerNumber)>5;
SELECT productLine,COUNT(productCode) AS TotalProducts FROM products GROUP BY productLine HAVING COUNT(productCode)>10;
SELECT officeCode,COUNT(employeeNumber) AS TotalEmployees FROM employees GROUP BY officeCode HAVING COUNT(employeeNumber)>2;

SELECT c.customerName,o.orderNumber,o.orderDate
FROM customers c INNER JOIN orders o ON c.customerNumber=o.customerNumber;

SELECT CONCAT(e.firstName,' ',e.lastName) AS EmployeeName,o.city,o.country
FROM employees e INNER JOIN offices o ON e.officeCode=o.officeCode;

SELECT c.customerName,o.orderNumber
FROM customers c LEFT JOIN orders o ON c.customerNumber=o.customerNumber;

SELECT CONCAT(e.firstName,' ',e.lastName) AS EmployeeName,c.customerName
FROM employees e LEFT JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber;

SELECT o.city,CONCAT(e.firstName,' ',e.lastName) AS EmployeeName
FROM employees e RIGHT JOIN offices o ON e.officeCode=o.officeCode;

SELECT c.customerName,o.orderNumber
FROM customers c LEFT JOIN orders o ON c.customerNumber=o.customerNumber
UNION
SELECT c.customerName,o.orderNumber
FROM customers c RIGHT JOIN orders o ON c.customerNumber=o.customerNumber;

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
age INT CHECK(age>=18));

CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(100) UNIQUE,
duration VARCHAR(50) NOT NULL);

CREATE TABLE enrollments(
student_id INT,
course_id INT,
enrollment_date DATE,
PRIMARY KEY(student_id,course_id),
FOREIGN KEY(student_id) REFERENCES students(student_id),
FOREIGN KEY(course_id) REFERENCES courses(course_id));
