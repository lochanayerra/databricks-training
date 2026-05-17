-- QUESTION 1
-- Retrieve the names of employees and their corresponding managers
-- including employees without managers

SELECT 
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;


-- QUESTION 2
-- Display all employees and their corresponding departments

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


-- QUESTION 3
-- List employees who report to a manager along with manager name

SELECT 
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;


-- QUESTION 4
-- Find total employees in each department including empty departments

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- QUESTION 5
-- Display employees who do not belong to any department

SELECT 
    emp_name
FROM employees
WHERE dept_id IS NULL;


-- QUESTION 6
-- Fetch employee names and assigned projects

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- QUESTION 7
-- Employees who completed at least one project

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;


-- QUESTION 8
-- Show projects and employees ensuring no project is omitted

SELECT 
    p.project_name,
    e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;


-- QUESTION 9
-- Employees and salary records

SELECT 
    emp_name,
    NULL AS salary
FROM employees;


-- QUESTION 10
-- Employee names and department names

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


-- QUESTION 11
-- Departments and employees including departments with no employees

SELECT 
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;


-- QUESTION 12
-- Employees with contact information

SELECT 
    emp_name,
    NULL AS contact_info
FROM employees;


-- QUESTION 13
-- Employees and departments including unmatched records

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

UNION

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- QUESTION 14
-- Employees who have not completed any project

SELECT 
    e.emp_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_name IS NULL;


-- QUESTION 15
-- Employee names and project names

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- QUESTION 16
-- List all projects and assigned employees

SELECT 
    p.project_name,
    e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;


-- QUESTION 17
-- Employees having both manager and project

SELECT 
    e.emp_name,
    m.emp_name AS manager_name,
    p.project_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id
INNER JOIN projects p
ON e.emp_id = p.emp_id;


-- QUESTION 18
-- Employees with departments excluding NULL departments

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- QUESTION 19
-- Employees belonging to multiple departments

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- QUESTION 20
-- Departments and employees including empty departments

SELECT 
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;


-- QUESTION 21
-- Employees with project but without department

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id
WHERE e.dept_id IS NULL;


-- QUESTION 22
-- Count employees in each department

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- QUESTION 23
-- Employees who report to managers

SELECT 
    e.emp_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;


-- QUESTION 24
-- All employees and their managers including NULL managers

SELECT 
    e.emp_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;


-- QUESTION 25
-- Department names and employee count

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;


-- QUESTION 26
-- Employees and departments including empty departments

SELECT 
    e.emp_name,
    d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;


-- QUESTION 27
-- Employees without salary records

SELECT 
    emp_name
FROM employees;


-- QUESTION 28
-- Employee project assignments

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- QUESTION 29
-- Employees with department and project assignments

SELECT 
    e.emp_name,
    d.dept_name,
    p.project_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN projects p
ON e.emp_id = p.emp_id;


-- QUESTION 30
-- Employees with or without departments

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
