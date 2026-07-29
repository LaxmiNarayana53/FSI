

-- ==========================================
-- TASK 5 - SQL LOGIC BUILDER SOLUTIONS
-- ==========================================

use classicmodels;

-- Problem 1
SELECT SUM(amount) AS Total_Sales
FROM payments;

-- Problem 2
SELECT
COUNT(customerNumber) AS Total_Customers,
MAX(creditLimit) AS Highest_Credit,
MIN(creditLimit) AS Lowest_Credit,
AVG(creditLimit) AS Average_Credit
FROM customers;

-- Problem 3
SELECT
MAX(buyPrice) AS Highest_BuyPrice,
MIN(buyPrice) AS Lowest_BuyPrice,
AVG(buyPrice) AS Average_BuyPrice
FROM products;

-- Problem 4
SELECT country,
COUNT(customerNumber) AS Total_Customers
FROM customers
GROUP BY country;

-- Problem 5
SELECT officeCode,
COUNT(employeeNumber) AS Total_Employees
FROM employees
GROUP BY officeCode;

-- Problem 6
SELECT productLine,
COUNT(productCode) AS Total_Products
FROM products
GROUP BY productLine;

-- Problem 7
SELECT customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC;

-- Problem 8
SELECT productName, buyPrice
FROM products
ORDER BY buyPrice ASC;

-- Problem 9
SELECT firstName, lastName
FROM employees
ORDER BY firstName, lastName;

-- Problem 10
SELECT customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;

-- Problem 11
SELECT productName, buyPrice
FROM products
ORDER BY buyPrice ASC
LIMIT 10;

-- Problem 12
SELECT *
FROM orders
ORDER BY orderNumber DESC
LIMIT 7;

-- Problem 13
SELECT country,
COUNT(customerNumber) AS Total_Customers
FROM customers
GROUP BY country
HAVING COUNT(customerNumber) > 5;

-- Problem 14
SELECT productLine,
COUNT(productCode) AS Total_Products
FROM products
GROUP BY productLine
HAVING COUNT(productCode) > 10;

-- Problem 15
SELECT officeCode,
COUNT(employeeNumber) AS Total_Employees
FROM employees
GROUP BY officeCode
HAVING COUNT(employeeNumber) > 2;

-- Problem 16
SELECT
c.customerName,
o.orderNumber,
o.orderDate
FROM customers c
INNER JOIN orders o
ON c.customerNumber = o.customerNumber;

-- Problem 17
SELECT
CONCAT(e.firstName,' ',e.lastName) AS Employee_Name,
o.city,
o.country
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- Problem 18
SELECT
c.customerName,
o.orderNumber
FROM customers c
LEFT JOIN orders o
ON c.customerNumber = o.customerNumber;

-- Problem 19
SELECT
CONCAT(e.firstName,' ',e.lastName) AS Employee_Name,
c.customerName
FROM employees e
LEFT JOIN customers c
ON e.employeeNumber = c.salesRepEmployeeNumber;

-- Problem 20
SELECT
o.city,
CONCAT(e.firstName,' ',e.lastName) AS Employee_Name
FROM employees e
RIGHT JOIN offices o
ON e.officeCode = o.officeCode;

-- Problem 21
SELECT
c.customerName,
o.orderNumber
FROM customers c
LEFT JOIN orders o
ON c.customerNumber = o.customerNumber

UNION

SELECT
c.customerName,
o.orderNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber = o.customerNumber;

-- Problem 22
CREATE TABLE students (
student_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
age INT CHECK(age >= 18)
);

-- Problem 23
CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(100) UNIQUE,
duration VARCHAR(50) NOT NULL
);

-- Problem 24
CREATE TABLE enrollments (
student_id INT,
course_id INT,
enrollment_date DATE,
PRIMARY KEY(student_id, course_id),
FOREIGN KEY(student_id) REFERENCES students(student_id),
FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

-- ==========================================
-- MINI CHALLENGE
-- ==========================================

-- Top 5 Customers by Credit Limit
SELECT customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;

-- Number of Customers in Each Country
SELECT country,
COUNT(customerNumber) AS Total_Customers
FROM customers
GROUP BY country;

-- Product Lines with More Than 10 Products
SELECT productLine,
COUNT(productCode) AS Total_Products
FROM products
GROUP BY productLine
HAVING COUNT(productCode) > 10;

-- Customer Name with Order Number
SELECT c.customerName,
o.orderNumber
FROM customers c
INNER JOIN orders o
ON c.customerNumber = o.customerNumber;

-- Employees with Office City
SELECT
CONCAT(e.firstName,' ',e.lastName) AS Employee_Name,
o.city
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- Average Product Price
SELECT AVG(buyPrice) AS Average_Product_Price
FROM products;

-- Highest Payment Received
SELECT MAX(amount) AS Highest_Payment
FROM payments;

-- Total Number of Products
SELECT COUNT(productCode) AS Total_Products
FROM products;
```


