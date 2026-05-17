-- NUMBER MANIPULATION FUNCTIONS IN MYSQL


-- QUESTION 1
-- Find absolute value

SELECT ABS(-100);

-- QUESTION 2
-- Round base_salary to 0 decimals

SELECT emp_name,
       ROUND(base_salary,0) AS rounded_salary
FROM employee_salary;

-- QUESTION 3
-- Round base_salary to 2 decimals

SELECT emp_name,
       ROUND(base_salary,2) AS rounded_salary
FROM employee_salary;

-- QUESTION 4
-- Apply CEIL function

SELECT emp_name,
       CEIL(base_salary) AS ceil_salary
FROM employee_salary;

-- QUESTION 5
-- Apply FLOOR function

SELECT emp_name,
       FLOOR(base_salary) AS floor_salary
FROM employee_salary;

-- QUESTION 6
-- Truncate salary to 1 decimal

SELECT emp_name,
       TRUNCATE(base_salary,1) AS truncated_salary
FROM employee_salary;

-- QUESTION 7
-- Find MOD of experience_years by 2

SELECT emp_name,
       MOD(experience_years,2) AS mod_value
FROM employee_salary;

-- QUESTION 8
-- Find POWER value

SELECT POWER(2,3);

-- QUESTION 9
-- Find POW value

SELECT POW(5,2);

-- QUESTION 10
-- Find square root

SELECT SQRT(64);

-- QUESTION 11
-- Find SIGN of salary

SELECT emp_name,
       SIGN(base_salary) AS sign_value
FROM employee_salary;

-- QUESTION 12
-- Generate random number

SELECT RAND();

-- QUESTION 13
-- Format salary with commas

SELECT emp_name,
       FORMAT(base_salary,2) AS formatted_salary
FROM employee_salary;

-- QUESTION 14
-- Find greatest value between salary and bonus

SELECT emp_name,
       GREATEST(base_salary, IFNULL(bonus,0)) AS greatest_value
FROM employee_salary;

-- QUESTION 15
-- Find least value between salary and bonus

SELECT emp_name,
       LEAST(base_salary, IFNULL(bonus,0)) AS least_value
FROM employee_salary;
