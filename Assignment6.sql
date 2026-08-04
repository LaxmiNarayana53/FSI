#prob-1
use ClassicModels;
show tables;
SELECT customerName, creditLimit FROM customers WHERE creditLimit = (SELECT MAX(creditLimit) FROM customers);
#prob-2
select productName,buyprice from products where buyprice > (select  avg(buyprice) from products);
 #prob-3
 select * from students;
 select * from customers;
 select employeeNumber from employees where employeeNumber in (select salesRepEmployeeNumber from customers where salesRepEmployeeNumber is not null);
 #prob-4
 SELECT customerName, country FROM customers WHERE country IN (SELECT country FROM customers GROUP BY country HAVING COUNT(*) > 1);
 #prob-5
 SELECT c.customerName, c.country, c.creditLimit FROM customers c WHERE c.creditLimit > (SELECT AVG(c2.creditLimit) FROM customers c2 WHERE c2.country = c.country);
 #prob-6
 select c.customerName,p.amount from customers c join payments p ON c.customerNumber = p.customerNumber where p.amount = (SELECT MAX(amount) FROM payments);
 #prob-7
 create table student ( student_id INT PRIMARY KEY, std_name varchar(20) not null ,email varchar(100) unique,age int check (age>=18)) ;
 #prob-8
 alter table student add column Phone_num int ;
ALTER TABLE student MODIFY Phone_num varchar(100);
 describe student;
 #prob-9
 CREATE TABLE departments (Department_ID INT PRIMARY KEY, Department_Name VARCHAR(100), Location VARCHAR(100)); 
 alter table departments rename column location to Department_Location;
 #prob-10
 INSERT INTO student (Student_ID, std_name, Email, Age, Phone_Num) VALUES (101, 'Satish', 'satish@gmail.com', 22, '9876543210'), (102, 'Rahul', 'rahul@gmail.com', 21, '9876543211'), (103, 'Anil', 'anil@gmail.com', 23, '9876543212'), (104, 'Kiran', 'kiran@gmail.com', 20, '9876543213'), (105, 'Vijay', 'vijay@gmail.com', 22, '9876543214');
 #prob-11
 update student set email ='satish.new@gmail.com' where student_id=101;
 select * from student ;
 #prob-12
 delete from student where student_id = 105;
 select * from student;
 #prob-13
 
 #import mysql.connector

#conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="classicmodels"
)

if conn.is_connected():
    print("Database Connected Successfully")
 
 