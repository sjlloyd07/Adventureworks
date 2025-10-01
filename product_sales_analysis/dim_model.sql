'''
Fact table: product_sales
	Grain: sales order line item
	Attributes: line item id, sales order id, product name, product category, order date, customer type, customer location (territory), quantity, unit price
'''

'''
product_sale(line item id, sale order id, product id, customer id, order date, quantity, unit price)

product(product id, name, category)

cusomter(customer id, location)


'''


---------------------------------------------------------
-- 1. Create schema for project.
---------------------------------------------------------

CREATE SCHEMA IF NOT EXISTS product_sales;
-- ALTER SCHEMA us_product_sales RENAME TO product_sales;

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------




---------------------------------------------------------
-- Fact table: f_sales
---------------------------------------------------------
---- Determine what columns to get from datebase. Retrieve table descriptions.

-- Table: sales.salesorderdetail (Individual products associated with a specific sales order. See SalesOrderHeader.)
-- Relevant Columns: salesorderid, salesorderdetailid, orderqty, productid, unitprice
SELECT salesorderid, 
	salesorderdetailid, 
	productid,
	orderqty, 
 	unitprice
FROM sales.salesorderdetail


-- Table: sales.salesorderheader (General sales order information.)
-- Columns: salesorderid, customerid, orderdate
SELECT salesorderid, 
	customerid,
	territoryid,
	orderdate
FROM sales.salesorderheader

'''
From "person.person.persontype" comment.

Primary type of person: 
SC = Store Contact
IN = Individual (retail) customer**
SP = Sales person
EM = Employee (non-sales)
VC = Vendor contact
GC = General contact
'''

-- Table: sales.customer (Current customer information. Also see the Person and Store tables.)
-- Columns: customerid(pk), personid
SELECT customerid, personid -- fk to person.person(businessentityid)
FROM sales.customer

-----------------------------------------------

-- Table: person.person (Human beings involved with AdventureWorks: employees, customer contacts, and vendor contacts.)
-- Columns: businessentityid(pk), persontype
SELECT businessentityid, persontype
FROM person.person


---- Denormalize tables containing sales order detail information for fact table.
-------- Make column headers snake case and rename.

DROP TABLE IF EXISTS product_sales.f_sales;
CREATE TABLE product_sales.f_sales AS
-- Return all individual retail customer ids (customerid = "IN")
WITH customer_match AS (
	SELECT c.customerid AS customer_id
	FROM person.person AS p
	LEFT JOIN sales.customer AS c
		ON c.personid = p.businessentityid
	WHERE p.persontype = 'IN'
),
-- Return all sales territory ids with "US" countryregioncode
us_territory AS (
	SELECT territoryid
	FROM sales.salesterritory
	WHERE countryregioncode = 'US'
)
-- Return denormalized sales line item details
SELECT
	sod.salesorderdetailid AS lineitem_id,
	sod.salesorderid AS sales_order, -- fk to sales.salesorderheader
	soh.territoryid AS territory_id,
	sod.productid AS product_id,
	sod.unitprice AS unit_price,
	sod.orderqty AS qty,
	soh.orderdate AS order_date
FROM sales.salesorderdetail AS sod
LEFT JOIN sales.salesorderheader AS soh
	ON sod.salesorderid = soh.salesorderid
JOIN customer_match AS cm
	ON cm.customer_id = soh.customerid
JOIN us_territory AS t
	ON soh.territoryid = t.territoryid
WHERE soh.orderdate BETWEEN DATE('2012-01-01') AND DATE('2013-12-31')
ORDER BY soh.orderdate
	
;	
	
ALTER TABLE product_sales.f_sales
ADD CONSTRAINT pk_saleid PRIMARY KEY (lineitem_id);
	

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------



-- **********************************************************************************************************************************************	
-- **********************************************************************************************************************************************	
---------------------------------------------------------
-- Dim table: customers
---------------------------------------------------------


---

SELECT 
	bea.businessentityid,
	a.addressid, 
	a.stateprovinceid, 
	sp.name,
	a.postalcode, 
	at.addresstypeid,
	at.name
FROM person.businessentityaddress AS bea
LEFT JOIN person.address AS a
	ON a.addressid = bea.addressid
LEFT JOIN person.addresstype AS at
	ON bea.addresstypeid = at.addresstypeid
LEFT JOIN person.stateprovince AS sp
	ON a.stateprovinceid = sp.stateprovinceid


---

'''
From schema comment.

Primary type of person: 
SC = Store Contact
IN = Individual (retail) customer**
SP = Sales person
EM = Employee (non-sales)
VC = Vendor contact
GC = General contact
'''

-----------------------------------------------

---- Denormalize customer information.
------ Rename columns and make snake case.

SELECT
	c.customerid AS customer_id,
	c.personid, -- fk to person.person(businessentityid(pk)),
	p.persontype AS customer_type,
	p.businessentityid
FROM person.person AS p
LEFT JOIN sales.customer AS c
	ON c.personid = p.businessentityid
WHERE p.persontype = 'IN'

---------------------------------------------------------
---------------------------------------------------------
-- **********************************************************************************************************************************************	
-- **********************************************************************************************************************************************	




---------------------------------------------------------
-- Dim table: dim_products
---------------------------------------------------------
-- Product information to include: 
---- product_id, description, product_number, category, subcategory, model, line (cost & list_price are out of scope)


-- Table: production.productcategory
-- Columns: productcategoryid, name
SELECT productcategoryid, name
FROM production.productcategory


-- Table: production.productsubcategory
-- Columns: productsubcategoryid, productcategoryid, name
SELECT productsubcategoryid, productcategoryid, name
FROM production.productsubcategory


-- Table: production.productmodel
-- Columns: productmodelid, name
SELECT productmodelid, name
FROM production.productmodel

---------------------------------------------------------


---- Denormalized product information. 
------ Rename columns and make snake case.
------ Impute productline full values.
------ Limit products to finsihed retail goods.

CREATE TABLE IF NOT EXISTS product_sales.d_product AS
	SELECT 
		p.productid AS product_id, 
		p.name AS description, 
		p.productnumber AS product_number, 
		pc.name AS category,
		psc.name AS subcategory,
		pm.name AS model,
		CASE p.productline --per schema: R = Road, M = Mountain, T = Touring, S = Standard
			WHEN 'R' THEN 'Road'
			WHEN 'M' THEN 'Mountain'
			WHEN 'T' THEN 'Touring'
	-- 		WHEN 'S' THEN 'Standard' -- ignore standard line designation (unrelated)
			ELSE 'N/A'
		END AS line
	FROM production.product AS p
	LEFT JOIN production.productsubcategory AS psc
		ON p.productsubcategoryid = psc.productsubcategoryid
	LEFT JOIN production.productcategory AS pc
		ON psc.productcategoryid = pc.productcategoryid
	LEFT JOIN production.productmodel AS pm
		ON p.productmodelid = pm.productmodelid
	WHERE p.finishedgoodsflag = TRUE 
	
;

ALTER TABLE product_sales.d_product
ADD CONSTRAINT pk_productid PRIMARY KEY (product_id);

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------



---------------------------------------------------------
-- Dim table: dim_territory
---------------------------------------------------------

-- Table: sales.salesterritory (Sales territory lookup table.)
-- Columns: territoryid, name, countryregioncode, group

CREATE TABLE IF NOT EXISTS product_sales.d_territory AS
	SELECT territoryid AS territory_id,	
		name AS territory_name
	FROM sales.salesterritory
	WHERE countryregioncode = 'US'


ALTER TABLE product_sales.d_territory
ADD CONSTRAINT pk_territoryid PRIMARY KEY (territory_id); 

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------



---------------------------------------------------------
-- Dim table: dim_dates
---------------------------------------------------------
DROP TABLE IF EXISTS product_sales.d_date;
CREATE TABLE IF NOT EXISTS product_sales.d_date AS 
	-- Generate dates in series.
	WITH dates_series AS (
		SELECT calendar_date::date 
		FROM GENERATE_SERIES (
			DATE '2000-01-01', 
			DATE '2030-12-31', 
			INTERVAL '1 day') AS calendar_date
	)
	SELECT 
		calendar_date AS date,
		EXTRACT(year FROM calendar_date) AS iso_year,
		EXTRACT(MONTH FROM calendar_date) AS month,
		TO_CHAR(calendar_date,'Month') AS month_name,
		EXTRACT(DAY FROM calendar_date) AS day_of_month,
		TO_CHAR(calendar_date,'Day') AS day_name,
		EXTRACT(doy FROM calendar_date) AS day_of_year,
		TO_CHAR(calendar_date,'W')::INT AS week_of_month,
		CONCAT('Q',EXTRACT(quarter FROM calendar_date)) quarter_name,
		(CASE 
			WHEN EXTRACT(isodow FROM calendar_date) IN (6,7) 
			THEN 1 
			ELSE 0 
		END) AS is_weekend,
		generate_holidays(calendar_date::date) AS holiday
	FROM dates_series
;


ALTER TABLE product_sales.d_date
ADD CONSTRAINT date UNIQUE (date);


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


ALTER TABLE product_sales.f_sales
ADD CONSTRAINT fk_territory 
	FOREIGN KEY (territory_id) REFERENCES product_sales.d_territory(territory_id);

ALTER TABLE product_sales.f_sales
ADD CONSTRAINT fk_product
	FOREIGN KEY (product_id) REFERENCES product_sales.d_product(product_id);

ALTER TABLE product_sales.f_sales
ADD CONSTRAINT fk_date
	FOREIGN KEY (order_date) REFERENCES product_sales.d_date(date);

