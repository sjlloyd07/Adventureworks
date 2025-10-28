# Product Sales Analysis, 2012-2013

<!-- 
* Business scenario (stakeholder desires and project goal)
* Project objectives to reach goal (ultimate information requested by stakeholder)  
-->
 <!-- background for context -->

Adventure Works Cycles is a large, multinational manufacturing company. The company manufactures and sells metal and composite bicycles to North American, European and Asian commercial markets. While its base operation is located in Bothell, Washington with 290 employees, several regional sales teams are located throughout their market base. [^1]

In the early stages of forming their sales strategy for the year 2014, the sales manager for the U.S. region requests from the data team an overview of the 2013 product sales for the individual customer segment with which to discuss with their salespeople. The sales manager would like to review products with the highest sales and how those sales compared to the previous year. They'd like to know which products had the biggest sales gains year-over-year, as well as products with the biggest losses. They'd also like to know which product categories performed best overall, with performance metrics referring to total sales and YoY growth.

<!-- link to Microsoft -->
[^1]: [Source](https://learn.microsoft.com/en-us/previous-versions/sql/sql-server-2008/ms124825(v=sql.100))



## Project Overview

The data team is tasked with producing a product sales analysis that focuses on the top selling products and product categories for the year 2013 and comparing their sales performance to the previous year.  


<!--

*Scope limitations that have already been determined by initial description:
- individual customer segment only (not business or store)
- time period (2012 and 2013)
- region is limited to the U.S. only


:::User Stories and Additional Requirements Gathering:::

With previously determined limitations in mind...

As the U.S. Sales Manager, I want to...
- see the total sum of product sales for the year 2013 (text box)
- see the YoY growth pct for total product sales from 2012 to 2013 (text box)
- see the sum of sales for each individual product (ranked list of product sales sums)
- see product category sales aggregations (rank list of category sales sums)
- see the YoY growth pct for individual product sales and product category sales from 2012 to 2013
- be able to select a time period of aggregated sales totals for both individual product sales and product category sales





 

-->


<!-- Translate user requirements into project objectives viewable on the final report -->
#### Project Objectives 

<!-- objective -->
* Highlight the top 5 best selling products by total sales for a selectable time period. 
<!-- steps to complete objective
- Calculate the sum of sales for each product

 -->

* alculate the YoY sales growth from the previous year for each product.
* Identify the products with the largest positive and negative YoY percentage growth for 2012/2013.
* Identify the product category with the highest total sales in 2013.
* Calculate the YoY growth for each product category to determine the category with highest YoY growth.


### Scope

|||
|--|--|
| **Stakeholders** | Sales Manager (U.S.) |
| **Description** | Summary Product Sales Analysis |
| **Deliverables** | <li>Total product sales and YoY percentage growth. (text box)</li> <li>Top 5 products by sales. (bar chart)</li> <li>Products with the largest positive and negative YoY sales growth. (text box)</li> <li>Product category sales. (bar chart)</li> <li>Every aggregate sales value also shows the YoY % growth between 2012 and 2013.</li> |
| **In Scope** | <li>Sales records for years 2012 & 2013 in US sales territories.</li> <li>Individucal customer sales records only.</li> <li>Descriptive product attributes.</li>|
| **Out of Scope** | <li>Any other sales record year.</li> <li>Sales to resellers or commercial entities.</li> |
|||

<br>


## Data details / structure  <!-- ERD diagram to show understanding of data structure -->

In order to aggregate individual product sales metrics, the granularity is the sales order line item. This contains details that include the sales date, product name, product category, quantity, sales amount, and customer type.

<!-- TODO: Add ERD visual aid -->



<br>

## Executive Summary
<!-- TODO -->
narrative summary of key findings

<br>

## Key Insights
<!-- TODO -->

<br>

## Recommendations
<!-- TODO -->