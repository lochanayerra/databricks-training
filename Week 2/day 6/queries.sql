-- Q1 LENGTH Function
SELECT full_name,
LENGTH(full_name) AS total_characters
FROM employees;

-- Q2 CHAR_LENGTH Function
SELECT full_name,
CHAR_LENGTH(full_name) AS character_length
FROM employees;

-- Q3 UPPER and LOWER
SELECT
UPPER(department) AS upper_department,
LOWER(city) AS lower_city
FROM employees;

-- Q4 TRIM LTRIM RTRIM
SELECT
TRIM(full_name) AS trimmed_name,
LTRIM(full_name) AS left_trimmed,
RTRIM(full_name) AS right_trimmed
FROM employees;

-- Q5 CONCAT
SELECT
CONCAT(full_name,' - ',department) AS employee_details
FROM employees;

-- Q6 CONCAT_WS
SELECT
CONCAT_WS(' | ',emp_id,full_name,city) AS combined_data
FROM employees;

-- Q7 SUBSTRING
SELECT
email,
SUBSTRING(email,1,7) AS extracted_text
FROM employees;

-- Q8 SUBSTR
SELECT
email,
SUBSTR(email,1,5) AS extracted_substr
FROM employees;

-- Q9 LEFT and RIGHT
SELECT
LEFT(full_name,4) AS left_text,
RIGHT(city,3) AS right_text
FROM employees;

-- Q10 INSTR
SELECT
email,
INSTR(email,'@') AS at_position
FROM employees;

-- Q11 LOCATE
SELECT
email,
LOCATE('.',email) AS dot_position
FROM employees;

-- Q12 REPLACE
SELECT
department,
REPLACE(department,'Data','Big Data') AS updated_department
FROM employees;

-- Q13 REVERSE
SELECT
full_name,
REVERSE(full_name) AS reversed_name
FROM employees;

-- Q14 LPAD
SELECT
LPAD(emp_id,5,'0') AS padded_id
FROM employees;

-- Q15 RPAD
SELECT
RPAD(city,15,'*') AS padded_city
FROM employees;

-- Q16 TRIM + REPLACE
SELECT
city,
TRIM(REPLACE(city,' ','')) AS cleaned_city
FROM employees;

-- Q17 IFNULL
SELECT
full_name,
IFNULL(remarks,'No remarks') AS employee_remarks
FROM employees;

-- Q18 COALESCE
SELECT
full_name,
COALESCE(remarks,'N/A') AS remarks_output
FROM employees;

-- Q19 FIND_IN_SET
SELECT
FIND_IN_SET('Analytics','Data,Analytics,AI') AS position_value;
