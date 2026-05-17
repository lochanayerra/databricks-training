# NULL Handling Functions in MySQL

## Overview
This project demonstrates how NULL values are handled in MySQL using different NULL handling functions and conditions.

The examples use three tables:

- Employees
- Orders
- Products

These examples help understand how to:

- Replace NULL values
- Detect NULL values
- Handle calculations with NULL safely
- Use NULL in real-time business scenarios

---

# Tables Used

## 1. Employees
Contains employee salary, bonus, and manager information.

## 2. Orders
Contains customer orders, discounts, and coupon details.

## 3. Products
Contains product pricing, category, and stock details.

---

# NULL Handling Concepts Covered

## 1. IS NULL
Used to find rows where value is NULL.

### Example
```sql
SELECT * FROM Employees
WHERE salary IS NULL;
