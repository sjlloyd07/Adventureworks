-- Create table in adventureworks.data_analysis containing only work orders with scrapped parts.
DROP TABLE IF EXISTS data_analysis.scrap_data; 
CREATE TABLE data_analysis.scrap_data AS 
	SELECT
		wo.workorderid AS workorder_id,
		enddate AS production_date,
		wo.productid AS product_id,
		pro.name AS product_description,
		pro.productnumber AS part_number,
		wo.orderqty AS order_qty,
		wo.scrappedqty AS scrap_qty,
		-- Calculate ratio of scrapped part qty to order qty.
		round(wo.scrappedqty/(wo.orderqty::numeric), 4) AS scrap_pct,
		wo.scrapreasonid AS scrap_reason_id,
		scrap.name AS scrap_reason
	FROM production.workorder AS wo
	LEFT JOIN production.product AS pro
		ON wo.productid = pro.productid
	LEFT JOIN production.scrapreason AS scrap
		ON wo.scrapreasonid = scrap.scrapreasonid
	-- Filter for work orders containing scrapped parts.
	WHERE scrappedqty > 0
	ORDER BY workorder_id;
	

---- Export scrap_data table to csv file via psql '\copy' commmand.
-- \copy data_analysis.scrap_data TO 'C:\Users\steve\tech_portfolio\portfolio_projects\adventureworks\qc_analysis\data\scrap_data.csv' DELIMITER ',' CSV HEADER;




-- Generate calendar table from scrap_data using cte recursion.
--// Table limits: beginning of first occurring year, end of last occurring year
DROP TABLE IF EXISTS data_analysis.calendar_tbl;
CREATE TABLE data_analysis.calendar_tbl AS 
	WITH RECURSIVE date_cte AS (
		-- Calendar date begins at the start of the first year in data.
		SELECT min(date_trunc('year', production_date)) AS calendar_date
		FROM data_analysis.scrap_data
		UNION ALL
		SELECT calendar_date + '1 day'::interval AS calendar_date
		FROM date_cte
		WHERE (calendar_date + '1 day'::interval) <= (
			-- Calendar date ends at end of the last year.
			SELECT date(max(date_part('year', production_date)) || '-12-31')
			FROM data_analysis.scrap_data
		)
	)
	SELECT 
		calendar_date,
		date_part('year', calendar_date) AS year,
		date_part('month', calendar_date) AS month,
		date_part('day', calendar_date) AS day,
		extract(isodow from calendar_date) AS day_of_week_number,
		to_char(calendar_date, 'Day') AS day_of_week_text,
		extract(quarter from calendar_date) AS quarter,
		extract(week from calendar_date) AS iso_week_number,
		extract(isoyear from calendar_date) AS iso_year
	FROM date_cte
;

---- Export calendard_tbl table to csv file via psql '\copy' commmand.
-- \copy data_analysis.calendar_tbl TO 'C:\Users\steve\tech_portfolio\portfolio_projects\adventureworks\qc_analysis\data\calendar_tbl.csv' DELIMITER ',' CSV HEADER;




-- ********************
-- **** DEPRECATED ****
-- ********************
-- Generate calendar table from scrap_data using cte recursion.
--// Table limits: data source beginning-end YEAR/MONTH
-- DROP TABLE IF EXISTS data_analysis.calendar_tbl;
-- CREATE TABLE data_analysis.calendar_tbl AS 
-- 	WITH RECURSIVE date_cte AS (
-- 		SELECT min(date_trunc('month', production_date)) AS calendar_date
-- 		FROM data_analysis.scrap_data
-- 		UNION ALL
-- 		SELECT calendar_date + '1 day'::interval AS calendar_date
-- 		FROM date_cte
-- 		WHERE (calendar_date + '1 day'::interval) <= (
-- 			SELECT (max(date_trunc('month', production_date)) + '1 month'::interval) - '1 day'::interval 
-- 			FROM data_analysis.scrap_data
-- 		)
-- 	)
-- 	SELECT 
-- 		calendar_date,
-- 		date_part('year', calendar_date) AS year,
-- 		date_part('month', calendar_date) AS month,
-- 		date_part('day', calendar_date) AS day,
-- 		extract(isodow from calendar_date) AS day_of_week_number,
-- 		to_char(calendar_date, 'Day') AS day_of_week_text,
-- 		extract(week from calendar_date) AS week_number,
-- 		extract(quarter from calendar_date) AS quarter
-- 	FROM date_cte
-- ;
-- ********


