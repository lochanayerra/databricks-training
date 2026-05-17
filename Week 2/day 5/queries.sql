-- Q1 Extract numeric characters at beginning
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'^[0-9]+') AS starting_digits
FROM regex_practice;

-- Q2 Extract numeric characters at end
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'[0-9]+$') AS ending_digits
FROM regex_practice;

-- Q3 Extract first single character
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'^.') AS first_character
FROM regex_practice;

-- Q4 Extract last single character
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'.$') AS last_character
FROM regex_practice;

-- Q5 Extract exactly two consecutive digits
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'[0-9]{2}') AS two_digits
FROM regex_practice;

-- Q6 Extract exactly one numeric character
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'[0-9]') AS one_digit
FROM regex_practice;

-- Q7 Extract country code from phone
SELECT id,phone,
REGEXP_SUBSTR(phone,'[0-9]+') AS country_code
FROM regex_practice;

-- Q8 Extract numeric portion between alphabets
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'[0-9]+') AS middle_digits
FROM regex_practice;

-- Q9 Extract text before @
SELECT id,email,
REGEXP_SUBSTR(email,'^[a-zA-Z0-9._-]+') AS username
FROM regex_practice;

-- Q10 Extract text after @
SELECT id,email,
REPLACE(REGEXP_SUBSTR(email,'@[a-zA-Z0-9.]+'),'@','') AS domain_part
FROM regex_practice;

-- Q11 Extract domain name only
SELECT id,email,
REPLACE(REGEXP_SUBSTR(email,'@[a-zA-Z0-9.]+'),'@','') AS domain_name
FROM regex_practice;

-- Q12 Extract extension after last dot
SELECT id,email,
REGEXP_SUBSTR(email,'[a-zA-Z]+$') AS extension
FROM regex_practice;

-- Q13 Extract continuous alphabets
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'[a-zA-Z]+') AS alphabets
FROM regex_practice;

-- Q14 Extract continuous digits
SELECT id,mixed_value,
REGEXP_SUBSTR(mixed_value,'[0-9]+') AS digits
FROM regex_practice;

-- Q15 Extract first 3 characters
SELECT id,full_text,
REGEXP_SUBSTR(full_text,'^...') AS first_three
FROM regex_practice;

-- Q16 Extract last 2 characters
SELECT id,full_text,
REGEXP_SUBSTR(full_text,'..$') AS last_two
FROM regex_practice;

-- Q17 Extract employee number
SELECT id,full_text,
REGEXP_SUBSTR(full_text,'[0-9]+') AS employee_number
FROM regex_practice;

-- Q18 Extract ending country code
SELECT id,full_text,
REGEXP_SUBSTR(full_text,'[0-9]+$') AS country_code
FROM regex_practice;

-- Q19 Extract text between underscores
SELECT id,full_text,
REPLACE(REPLACE(REGEXP_SUBSTR(full_text,'_[A-Z]+_'),'_',''),'_','') AS middle_text
FROM regex_practice;

-- Q20 Extract digits after plus sign
SELECT id,phone,
REGEXP_SUBSTR(phone,'[0-9]+') AS plus_country_code
FROM regex_practice;
