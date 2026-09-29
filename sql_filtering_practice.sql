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

-- 1. WHERE
SELECT * FROM employees
WHERE department = 'IT';

-- 2. WHERE with salary
SELECT * FROM employees
WHERE salary > 50000;

-- 3. WHERE with city
SELECT * FROM employees
WHERE city = 'Delhi';

-- 4. IN
SELECT * FROM employees
WHERE department IN ('IT', 'HR');

-- 5. IN with cities
SELECT * FROM employees
WHERE city IN ('Delhi', 'Mumbai');

-- 6. BETWEEN
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 7. BETWEEN with employee ID
SELECT * FROM employees
WHERE employee_id BETWEEN 2 AND 6;

-- 8. LIKE starting with A
SELECT * FROM employees
WHERE employee_name LIKE 'A%';

-- 9. LIKE ending with a
SELECT * FROM employees
WHERE employee_name LIKE '%a';

-- 10. LIKE containing 'an'
SELECT * FROM employees
WHERE employee_name LIKE '%an%';

-- 11. Combined filters
SELECT * FROM employees
WHERE department = 'IT' AND salary > 50000;

-- 12. Combined IN and BETWEEN
SELECT * FROM employees
WHERE city IN ('Delhi', 'Pune')
AND salary BETWEEN 40000 AND 60000;
