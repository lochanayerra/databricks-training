# Day 3 - SQL Joins Assignment

## Topics Covered
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- CROSS JOIN
- Finding unmatched rows
- NULL handling in joins
- Multi-table joins

---

# Database Used
Online Learning Platform Database

## Tables
1. students
2. courses
3. enrollments
4. instructors

---

# Concepts Practiced

## LEFT JOIN
Used to display all rows from the left table and matching rows from the right table.

## RIGHT JOIN
Used to display all rows from the right table and matching rows from the left table.

## FULL OUTER JOIN
Used to display all matching and unmatched rows from both tables.

## CROSS JOIN
Used to generate every possible combination between two tables.

## Finding Unmatched Rows
Used LEFT JOIN with NULL conditions to identify:
- students without enrollments
- courses without instructors
- courses without enrollments

---

# Queries Implemented

1. Display all students and their enrolled courses
2. Find courses with no students enrolled
3. Display instructors and the courses they teach
4. Find courses without instructors
5. RIGHT JOIN example with students and enrollments
6. Find students not enrolled in any course
7. FULL OUTER JOIN between students and enrollments
8. Find courses never appearing in enrollments
9. FULL OUTER JOIN between instructors and courses
10. Generate report with student, course, and instructor details
11. BONUS: CROSS JOIN to display every student with every course

---

# Key Learnings

- Difference between INNER, LEFT, RIGHT, FULL, and CROSS JOIN
- How NULL values appear in joins
- How to identify unmatched rows
- How bridge tables work
- Many-to-Many relationships using enrollments table
- Multi-table join chaining


