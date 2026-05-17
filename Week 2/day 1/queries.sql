-- CURRENT DATE & TIME

SELECT CURDATE();

SELECT CURRENT_DATE();

SELECT CURTIME();

SELECT CURRENT_TIME();

SELECT NOW();

SELECT CURRENT_TIMESTAMP();



-- EXTRACT YEAR MONTH DAY

SELECT
    order_id,
    YEAR(order_date) AS year_value,
    MONTH(order_date) AS month_value,
    DAY(order_date) AS day_value
FROM orders;



-- EXTRACT FUNCTION

SELECT
    order_id,
    EXTRACT(YEAR FROM order_date) AS extracted_year,
    EXTRACT(MONTH FROM order_date) AS extracted_month,
    EXTRACT(DAY FROM order_date) AS extracted_day
FROM orders;



-- MONTHNAME AND DAYNAME

SELECT
    order_id,
    MONTHNAME(order_date) AS month_name,
    DAYNAME(order_date) AS day_name
FROM orders;



-- WEEKDAY AND DAYOFWEEK

SELECT
    order_id,
    WEEKDAY(order_date) AS weekday_number,
    DAYOFWEEK(order_date) AS dayofweek_number
FROM orders;



-- IDENTIFY WEEKENDS

SELECT
    order_id,
    order_date,
    DAYNAME(order_date) AS day_name
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday', 'Sunday');



-- IDENTIFY WEEKDAYS

SELECT
    order_id,
    order_date,
    DAYNAME(order_date) AS day_name
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;


-- DATE ADD

SELECT
    order_id,
    order_date,
    DATE_ADD(order_date, INTERVAL 5 DAY) AS plus_5_days
FROM orders;



-- DATE SUBTRACT

SELECT
    order_id,
    order_date,
    DATE_SUB(order_date, INTERVAL 3 DAY) AS minus_3_days
FROM orders;



-- ADD MONTH

SELECT
    order_id,
    DATE_ADD(order_date, INTERVAL 1 MONTH) AS plus_1_month
FROM orders;



-- ADD YEAR

SELECT
    order_id,
    DATE_ADD(order_date, INTERVAL 1 YEAR) AS plus_1_year
FROM orders;



-- DATEDIFF

SELECT
    order_id,
    DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;



-- TIMESTAMPDIFF

SELECT
    order_id,
    TIMESTAMPDIFF(DAY, order_date, delivery_date) AS days_difference,
    TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_difference
FROM orders;



-- LAST DAY OF MONTH

SELECT
    order_id,
    order_date,
    LAST_DAY(order_date) AS last_day
FROM orders;



-- FIRST DAY OF MONTH

SELECT
    order_id,
    order_date,
    DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY) AS first_day
FROM orders;


-- DATE FORMAT

SELECT
    order_id,
    DATE_FORMAT(order_date, '%d-%m-%Y') AS formatted_date
FROM orders;

SELECT
    order_id,
    DATE_FORMAT(order_date, '%M %d, %Y') AS formatted_full_date
FROM orders;



-- STRING TO DATE

SELECT STR_TO_DATE('15-01-2024', '%d-%m-%Y');



-- TIMESTAMP FORMAT

SELECT
    order_id,
    DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s') AS formatted_timestamp
FROM orders;



-- FILTER JANUARY ORDERS

SELECT *
FROM orders
WHERE MONTH(order_date) = 1;



-- FILTER FEBRUARY ORDERS

SELECT *
FROM orders
WHERE MONTHNAME(order_date) = 'February';



-- FINANCIAL YEAR LOGIC

SELECT
    order_id,
    order_date,
    CASE
        WHEN MONTH(order_date) >= 4
            THEN CONCAT(YEAR(order_date), '-', YEAR(order_date)+1)
        ELSE CONCAT(YEAR(order_date)-1, '-', YEAR(order_date))
    END AS financial_year
FROM orders;



-- ORDERS IN LAST 7 DAYS

SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;



-- ORDERS PLACED TODAY

SELECT *
FROM orders
WHERE DATE(order_timestamp) = CURDATE();
