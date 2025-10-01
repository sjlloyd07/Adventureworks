	
## Scenario

Management at AdventrueWorks (an organization that manufactures and sells bicycle components) wants to implement new procedures for better quality control during manufacturing in order to prevent fewer defective products from reaching the customer.  The acceptable quality levels (AQL), as defined in ISO 2859-1, are the maximum number of defective items that can be considered acceptable during random sampling inspections of a production batch - often expressed as a percentage or ratio of the total. The company does not currently monitor AQL during production runs, and management wants production AQL to be in line with the consumer product industry standard - 2.5%.  They want to know how to plan future business decisions by looking at previous product defect rates and identifying any areas where additional resources may need to be allocated in order to achieve the new AQL standard.

--- 
<br>

<!--------------------------------------->
## Define Problem / Requirements Gathering
<!--------------------------------------->

### Define the business problem.

The part manufacturing division does not have a formal process in place to reject production runs (work orders) that contain more than a certain percentage of defective items.  Implementing a new quality control process that aligns with industry AQL standards will likely affect production costs by leading to an increase in rejected production runs that previously would not have been.  Management wants to know where resources for improvement should be allocated in the future after the new production AQL standards are in place.

<br>

### Stakeholder Request / Expectations

In order to make an informed decision about future resource allocation, the management wants to know how many rejected (scrapped) defective parts there were over the previous year, the reasons for part rejections, and how many of those production runs (work orders) would have been rejected if the new AQL standards were in place.

<br>

### Requirements 

Scope of work: data from all available historic records of work orders that resulted in more than 0 defective (scrapped) parts.


User Stories

- As a user, I want to see a list of work orders that had scrapped parts, how many parts were scrapped in the order, the reason they were scrapped, and what % of total parts produced were scrapped in that order. 

- As a user, I want to see the different scrap reasons and the total number of parts scrapped per reason.

- As a user, I want to see when scrap events occurred over the year and be able to zoom in to more granular timeframes. 

- As a user, I want to be able to see how many orders would have been refected with the AQL standard in place in order to compare.

<br>


### Define Metrics / Granularity (to get from data sources)

- information to get from data: 
	- number of defective parts
	- number of defective parts per defect reason
	- number of work orders with rejected parts
	- percentage of rejected parts per work order for AQL comparison
	- AQL standard percentage by which to compare


- granularity of the data: work order level  

	- work order information  
		- date
		- work order number (id)
		- product id
		- product description
		- part number
		- order quantity (planned to produce)
		- scrapped quantity (rejected defected part)
		- scrap reason id (reason for rejection)
		- scrap reason description
		- percentage of parts that were scrapped from ordered quantity



---
<br>

<!--------------------------------------->
## Prepare the Data
<!--------------------------------------->


### Source and Transform the data to create the required metrics.

data sources (database.schema.table)

- adventureworks.production.workorder

	- columns: workorderid, productid, orderqty, scrappedqty, scrapreasonid, enddate

- adventureworks.production.scrapreason

	- columns: scrapreasonid, name
	
- adventureworks.production.product

	- columns: productid, name, productnumber



Transform data by denormalizing tables and calculating scrap part percentage.

Denormalized data table w/ renamed columns:

	adventureworks.production.workorder.enddate			--> production_date
	adventureworks.production.workorder.workorderid		--> work_order_id
	adventureworks.production.workorder.productid		--> product_id
	adventureworks.production.workorder.orderqty		--> order_qty
	adventureworks.production.workorder.scrappedqty		--> scrap_qty
	adventureworks.production.workorder.scrapreasonid	--> scrap_reason_id
	adventureworks.production.scrapreason.name			--> scrap_reason
	adventureworks.production.product.productnumber		--> part_number
	adventureworks.production.product.name				--> product_description

Notes:

- Filter workorder table for work orders that do not contain scrapped parts.
- Left join product table on productid.
- Left join scrapreason table on scrapreasonid.
- Rename all columns.
- Add calcuated column "scrap_pct" containing the ratio of scrapped quantity to order quantity for each work order.


---
<br>

<!--------------------------------------->
## Analyze and Visualize
<!--------------------------------------->

An interactive report shows a timeline of completed work orders that resulted in at least 1 scrapped (defective) part, details of each work order, and the ability to compare work order defect rates against an adjustable AQL. 

The report contains:
- line chart with monthly totals of completed work orders w/ ability to drill down to dayily totals
- text table that contains details of work orders
- bar chart that shows the total number of work orders that resulted in scrapped parts per scrap reason

[**Additional Details**](/TABLEAU_DOC.md)

<br>

<a href="https://public.tableau.com/views/qc_analysis/QCAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link">
  <img src="https://public.tableau.com/static/images/qc/qc_analysis/QCAnalysis/1_rss.png">
</a>


