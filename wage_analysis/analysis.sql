-- Employee wages with department

-- SELECT *
-- FROM humanresources.department

-- SELECT *
-- FROM humanresources.employeepayhistory

/*
Required data normalization for visualizations
- hourly employee ids
- most recent hourly employee wages
- most recent hourly employee departments
- hourly employee service time with the company
*/


---- NUMBER OF CURRENT EMPLOYEES
-- SELECT COUNT(DISTINCT businessentityid) AS emp_id
-- FROM humanresources.employee

-------------------------------

-- HOURLY EMPLOYEE IDs

DROP TABLE IF EXISTS hourly_employees;
CREATE TEMP TABLE hourly_employees AS
	SELECT businessentityid AS emp_id
	FROM humanresources.employee
	WHERE salariedflag = 'false';


----------------------------

-- EMPLOYEE WAGES

-- Temp table containing all current employee ids (emp_id) and wage rates (hourly_wage)
---- *This accounts for the unlikeleyhood that the highest wage earned by an employee is not the most recent wage (as returned by MAX(rate))
DROP TABLE IF EXISTS emp_wages_current;
CREATE TEMP TABLE emp_wages_current AS
WITH emp_wages_cte AS (
	-- Return hourly employee ids and wage rate histories with most recent assigned a 1
	SELECT 
		businessentityid AS emp_id,
		rate AS hourly_wage,
		ratechangedate,
		ROW_NUMBER() OVER(
			PARTITION BY businessentityid 
			ORDER BY ratechangedate DESC) AS rn
	FROM humanresources.employeepayhistory
	)
SELECT 
	emp_id,
	hourly_wage
FROM emp_wages_cte
WHERE rn = 1
;

---------------------------

-- EMPLOYEE DEPARTMENTS

-- Temp table containing all current employee ids and department ids to which they belong.
DROP TABLE IF EXISTS emp_dept_current;
CREATE TEMP TABLE emp_dept_current AS
WITH emp_dept_cte AS (
	-- Return employee ids and departmentid histories with most recent assigned a 1
	SELECT
		businessentityid AS emp_id,
		departmentid AS dept_id,
		startdate,
		ROW_NUMBER() OVER(
			PARTITION BY businessentityid 
			ORDER BY startdate DESC) AS rn
	FROM humanresources.employeedepartmenthistory
	)
SELECT 
	emp_id,
	dept_id
FROM emp_dept_cte
WHERE rn = 1
;

----------------------------

-- EMPLOYEE SERVICE TIME

-- * To more closely represent a real-world dataset, assume analysis is taking place in January 2014.
DROP TABLE IF EXISTS emp_service_current;
CREATE TEMP TABLE emp_service_current AS
	SELECT 
		businessentityid AS emp_id,
		hiredate,
		EXTRACT('year' FROM AGE('2014-01-01', hiredate)) AS years,
		EXTRACT('month' FROM AGE('2014-01-01', hiredate)) AS months,
		EXTRACT('day' FROM AGE('2014-01-01', hiredate)) AS days,
		(EXTRACT('year' FROM AGE('2014-01-01', hiredate)) * 12) +
			EXTRACT('month' FROM AGE('2014-01-01', hiredate)) AS total_months,
		('2014-01-01'::timestamptz - hiredate::timestamptz)::interval AS total_days

	FROM humanresources.employee
;



------------------------------

/* 
Create table from denormalizaed data containing hourly employee details:
* EMPLOYEE ID, 
* HOURLY WAGE, 
* DEPARTMENT,
* SERVICE TIME
*/

DROP TABLE IF EXISTS humanresources.hourly_emp_details;
CREATE TABLE IF NOT EXISTS humanresources.hourly_emp_details AS
	SELECT
		he.emp_id,
		ewc.hourly_wage,
		d.name AS department,
		esc.total_months AS months_of_service
	FROM hourly_employees AS he
	JOIN emp_wages_current AS ewc
		ON he.emp_id = ewc.emp_id
	JOIN emp_dept_current AS edc
		ON he.emp_id = edc.emp_id
	JOIN humanresources.department AS d
		ON edc.dept_id = d.departmentid
	JOIN emp_service_current AS esc
		ON esc.emp_id = he.emp_id
;

-- Check that resulting table looks correct.
SELECT *
FROM humanresources.hourly_emp_details
LIMIT 5
;

-- Check that record count matches the number of hourly employees.
-- SELECT 
-- 	COUNT(he.emp_id) AS hourly_employee_cnt,
-- 	COUNT(hed.emp_id) AS emp_detail_record_cnt,
-- 	COUNT(DISTINCT hed.emp_id) AS unique_emp_detail_records
-- FROM humanresources.hourly_emp_details AS hed
-- JOIN hourly_employees AS he
--  ON he.emp_id = hed.emp_id
-- ;

*** NOT USED *** --
-- Aggregate with dept summed wages, dept pct weekly wages, dept employee count, dept pct total employees
-- WITH dept_summed AS (
-- 	SELECT 
-- 		department,
-- 		ROUND(SUM(hourly_wage*40),2) AS summed_wages,
-- 		COUNT(emp_id) AS employees
-- 	FROM humanresources.hourly_emp_details
-- 	GROUP BY department
-- 	ORDER BY SUM(hourly_wage) DESC
-- )
-- SELECT
-- 	department,
-- 	summed_wages,
-- 	ROUND(
-- 		((summed_wages/SUM(summed_wages) OVER())*100),2
-- 		) AS pct_total_weekly_wages,
-- 	employees,
-- 	ROUND(
-- 		((employees/SUM(employees) OVER())*100),2
-- 		) AS pct_total_employees
-- FROM dept_summed
-- ;


---------------------------

-- Export results table with psql
-- \copy humanresources.hourly_emp_details TO 'C:\Users\steve\tech_portfolio\portfolio_projects\adventureworks\hourly_employees.csv' CSV HEADER;

