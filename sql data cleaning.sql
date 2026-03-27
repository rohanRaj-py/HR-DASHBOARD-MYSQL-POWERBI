CREATE DATABASE projects;

USE projects;

SELECT * FROM hr;

DESCRIBE hr;


ALTER TABLE hr
CHANGE `ï»¿id` emp_id VARCHAR(20);

SELECT birthdate FROM hr;

SET sql_safe_updates = 0;

UPDATE hr
SET birthdate = CASE
    WHEN birthdate LIKE '%/%' 
        THEN STR_TO_DATE(birthdate, '%m/%d/%Y')
    WHEN birthdate LIKE '%-%' 
        THEN STR_TO_DATE(birthdate, '%m-%d-%Y')
    ELSE NULL
END;

SELECT * FROM hr;

UPDATE hr
SET hire_date = CASE
    WHEN hire_date LIKE '%/%' 
        THEN STR_TO_DATE(hire_date, '%m/%d/%Y')
    WHEN hire_date LIKE '%-%' 
        THEN STR_TO_DATE(hire_date, '%m-%d-%Y')
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

DESC hr;
ALTER TABLE hr
MODIFY termdate DATETIME;


SELECT * FROM hr;

ALTER TABLE hr
DROP COLUMN termdate_new;

SELECT * FROM hr;
SELECT termdate FROM hr
LIMIT 10;

ALTER TABLE hr
MODIFY termdate DATE;

UPDATE hr
SET termdate = NULL
WHERE TRIM(termdate) = '';

SELECT termdate FROM hr;

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

desc hr;

ALTER TABLE hr
ADD COLUMN age INT;

SELECT * FROM hr;

UPDATE hr
SET age = timestampdiff(YEAR, birthdate, CURDATE());
SELECT age FROM hr;

SELECT COUNT(*) FROM hr
WHERE age < 18;

SELECT COUNT(*) FROM hr
WHERE termdate IS NULL;
