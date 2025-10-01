--**** List of schemas and tables ****--
SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
	AND table_type = 'BASE TABLE'	
ORDER BY length(table_schema), length(table_name)

---- Schemas / Table Counts --
SELECT 
	table_schema, 
	COUNT(*) AS tables_in_schema
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
	AND table_type = 'BASE TABLE'	
GROUP BY table_schema



----** HUMAN RESOURCES **----

---- Department ----
SELECT *
FROM humanresources.department

---- Employee ----
SELECT *
FROM humanresources.employee

---- Employee Department History ----
SELECT *
FROM humanresources.employeedepartmenthistory

---- Employee Pay History ---- 
SELECT *
FROM humanresources.employeepayhistory

---- Job Candidate ----
SELECT *
FROM humanresources.jobcandidate

---- Shift ----
SELECT *
FROM humanresources.shift




----** PERSON **----

---- Address ----
SELECT *
FROM person.address

---- Address Type ----
SELECT *
FROM person.addresstype

---- Business Entity ----
SELECT *
FROM person.businessentity

---- Business Entity Address ----
SELECT *
FROM person.businessentityaddress

---- Business Entity Contact ----
SELECT *
FROM person.businessentitycontact

---- Contact Type ----
SELECT *
FROM person.contacttype

---- Country Region ----
SELECT *
FROM person.countryregion

---- Email Address ----
SELECT *
FROM person.emailaddress

--- Password ----
SELECT *
FROM person.password

---- Person ----
SELECT *
FROM person.person

---- Person Phone ----
SELECT *
FROM person.personphone

---- Phone Number Type ----
SELECT *
FROM person.phonenumbertype

---- State Province ----
SELECT *
FROM person.stateprovince




----** Production **----

---- Bill of Materials ----
SELECT *
FROM production.billofmaterials

---- Culture ----
SELECT *
FROM production.culture

---- Document ----
SELECT *
FROM production.document

---- Illustration ----
SELECT *
FROM production.illustration

---- Location ----
SELECT *
FROM production.location

---- Product ----
SELECT *
FROM production.product

---- Product Category ----
SELECT *
FROM production.productcategory

---- Prouct Cost History ----
SELECT *
FROM production.productcosthistory

---- Product Description ----
SELECT *
FROM production.productdescription

---- Product Document ----
SELECT *
FROM production.productdocument

---- Product Inventory ----
SELECT *
FROM production.productinventory

---- Product List Price History ----
SELECT *
FROM production.productlistpricehistory

---- Product Model ----
SELECT *
FROM production.productmodel

-- 	Product Model Illustration --
SELECT *
FROM production.productmodelillustration

-- Product Model Product Description Culture --
SELECT *
FROM production.productmodelproductdescriptionculture

-- Product Photo --
SELECT *
FROM production.productphoto

-- Product Product Photo --
SELECT *
FROM production.productproductphoto

-- Product Review --
SELECT *
FROM production.productreview

-- Product Subcategory --
SELECT *
FROM production.productsubcategory

-- Scrap Reason --
SELECT *
FROM production.scrapreason

-- Transaction History --
SELECT *
FROM production.transactionhistory

-- Transaction History Archive --
SELECT *
FROM production.transactionhistoryarchive

-- Unit Measure --
SELECT *
FROM production.unitmeasure

-- Work Order --
SELECT *
FROM production.workorder

-- Work Order Routing --
SELECT *
FROM production.workorderrouting




----** Purchasing **----

-- Product Vendor --
SELECT *
FROM purchasing.productvendor

-- Purchase Order Detail
SELECT *
FROM purchasing.purchaseorderdetail

-- Purchase Order Header
SELECT *
FROM purchasing.purchaseorderheader

-- Ship Method -- 
SELECT *
FROM purchasing.shipmethod

-- Vendor --
SELECT *
FROM purchasing.vendor




----** Sales **----

-- Country Region Currency -- 
SELECT *
FROM sales.countryregioncurrency

-- Credit Card --
SELECT *
FROM sales.creditcard

-- Currency -- 
SELECT *
FROM sales.currency

-- Currency Rate --
SELECT *
FROM sales.currencyrate

-- Customer --
SELECT *
FROM sales.customer

-- Person Credit Card --
SELECT *
FROM sales.personcreditcard

-- Sales Order Detail --
SELECT *
FROM sales.salesorderdetail

-- Sales Order Header --
SELECT *
FROM sales.salesorderheader

-- Sales Order Header Sales Reason -- 
SELECT *
FROM sales.salesorderheadersalesreason

-- Sales Person --
SELECT *
FROM sales.salesperson

-- Sales Person Quota History --
SELECT *
FROM sales.salespersonquotahistory

-- Sales Reason --
SELECT *
FROM sales.salesreason

-- Sales Tax Rate --
SELECT *
FROM sales.salestaxrate

-- Sales Territory -- 
SELECT *
FROM sales.salesterritory

-- Sales Territory History --
SELECT *
FROM sales.salesterritoryhistory

-- Shopping Cart Item -- 
SELECT *
FROM sales.shoppingcartitem

-- Special Offer --
SELECT *
FROM sales.specialoffer

-- Special Offer Product --
SELECT *
FROM sales.specialofferproduct

-- Store --
SELECT *
FROM sales.store