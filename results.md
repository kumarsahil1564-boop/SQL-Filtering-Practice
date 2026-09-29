# SQL Filtering Practice - Results

## Query 1 - WHERE
Condition: department = 'IT'

Result:
Amit, Priya, Anjali

## Query 2 - Salary Filter
Condition: salary > 50000

Result:
Amit, Priya, Rohit, Sneha

## Query 3 - City Filter
Condition: city = 'Delhi'

Result:
Amit, Priya, Karan

## Query 4 - IN
Condition: department IN ('IT', 'HR')

Result:
Amit, Rahul, Priya, Anjali, Sneha

## Query 5 - IN with Cities
Condition: city IN ('Delhi', 'Mumbai')

Result:
Amit, Rahul, Priya, Rohit, Karan

## Query 6 - BETWEEN
Condition: salary BETWEEN 40000 AND 60000

Result:
Amit, Rahul, Anjali, Karan, Sneha

## Query 7 - BETWEEN with Employee ID
Condition: employee_id BETWEEN 2 AND 6

Result:
Rahul, Priya, Neha, Rohit, Anjali

## Query 8 - LIKE
Condition: employee_name LIKE 'A%'

Result:
Amit, Anjali

## Query 9 - LIKE
Condition: employee_name LIKE '%a'

Result:
Priya, Neha, Sneha

## Query 10 - LIKE
Condition: employee_name LIKE '%an%'

Result:
Anjali, Karan

## Query 11 - WHERE + AND
Condition: department = 'IT' AND salary > 50000

Result:
Amit, Priya

## Query 12 - IN + BETWEEN
Condition: city IN ('Delhi', 'Pune')
AND salary BETWEEN 40000 AND 60000

Result:
Amit, Karan, Sneha

## Query 13 - Multiple Conditions
Condition: salary BETWEEN 40000 AND 70000
AND city IN ('Delhi', 'Mumbai', 'Pune')

Result:
Amit, Rahul, Priya, Karan, Sneha
