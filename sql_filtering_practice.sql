CREATE DATABASE sql_filtering_practice;
USE sql_filtering_practice;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Amit', 'IT', 55000, 'Delhi'),
(2, 'Rahul', 'HR', 42000, 'Mumbai'),
(3, 'Priya', 'IT', 65000, 'Delhi'),
(4, 'Neha', 'Sales', 38000, 'Pune'),
(5, 'Rohit', 'Finance', 72000, 'Mumbai'),
(6, 'Anjali', 'IT', 48000, 'Bangalore'),
(7, 'Karan', 'Sales', 45000, 'Delhi'),
(8, 'Sneha', 'HR', 52000, 'Pune');


-- Query 1: WHERE
SELECT * FROM employees
WHERE department = 'IT';


-- Query 2: WHERE with Salary
SELECT * FROM employees
WHERE salary > 50000;


-- Query 3: WHERE with City
SELECT * FROM employees
WHERE city = 'Delhi';


-- Query 4: IN
SELECT * FROM employees
WHERE department IN ('IT', 'HR');


-- Query 5: IN with Cities
SELECT * FROM employees
WHERE city IN ('Delhi', 'Mumbai');


-- Query 6: BETWEEN
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 60000;


-- Query 7: BETWEEN with Employee ID
SELECT * FROM employees
WHERE employee_id BETWEEN 2 AND 6;


-- Query 8: LIKE starting with A
SELECT * FROM employees
WHERE employee_name LIKE 'A%';


-- Query 9: LIKE ending with a
SELECT * FROM employees
WHERE employee_name LIKE '%a';


-- Query 10: LIKE containing 'an'
SELECT * FROM employees
WHERE employee_name LIKE '%an%';


-- Query 11: Combined WHERE and AND
SELECT * FROM employees
WHERE department = 'IT'
AND salary > 50000;


-- Query 12: IN + BETWEEN
SELECT * FROM employees
WHERE city IN ('Delhi', 'Pune')
AND salary BETWEEN 40000 AND 60000;


-- Query 13: Multiple Conditions
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 70000
AND city IN ('Delhi', 'Mumbai', 'Pune');
