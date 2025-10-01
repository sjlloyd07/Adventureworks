Filename: qc_analysis.twb


#### Worksheets
- [TextTable](/#texttable)
- [TextTableHeaders](/#TextTableHeaders)
- [ScrapReasonHisto](/#)
- [WOTotal](/#WOTotal)
- [WOTimeline](/#WOTimeline)
- [WODayDrilldown](/#WODayDrilldown)
- [SelectionInfo1](/#SelectionInfo1)
- [TextTableInfo1](/#TextTableInfo1)
- [TextTableInfo2](/#TextTableInfo2)
- [AQLButton](/#AQLButton)
- [ShowAllButton](/#ShowAllButton)
- [DayButton](/#DayButton)
- [MonthButton](/#MonthButton)
- [ShowHideButton](/#ShowHideButton)

---
<br><br>

## TextTable

<details><summary>Description of "TextTable"</summary>

	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder and !Placeholder for each !Sort Field, sum of Order Qty, sum of Scrap Qty and sum of Scrap Pct broken down by Production Date, Workorder Id, Part Number, Product Description, !Scrap Reason + ID, Scrap Reason Id and !Scrap Reason Shorthand.  Color shows details about !AQL Check Button. The data is filtered on !Show-Hide AQL Results Filter, Production Date Year and !Selected Month Focus. The !Show-Hide AQL Results Filter filter keeps True. The Production Date Year filter keeps 2011, 2012, 2013 and 2014. The !Selected Month Focus filter keeps True. The view is filtered on !Scrap Reason + ID, which keeps 16 of 16 members.

	!Placeholder Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	Production Date
	Color:	!AQL Check Button

	!Placeholder (2) Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	Workorder Id
	Color:	!AQL Check Button

	!Placeholder (3) Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	Part Number
	Color:	!AQL Check Button

	!Placeholder (4) Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	Sum of Order Qty
	Color:	!AQL Check Button

	!Placeholder (5) Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	Sum of Scrap Qty
	Color:	!AQL Check Button

	!Placeholder (6) Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	Sum of Scrap Pct
	Color:	!AQL Check Button

	!Placeholder (7) Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	!Scrap Reason Shorthand
	Color:	!AQL Check Button

	!Placeholder (8) Properties

	Marks

	The mark type is Text.
	Stacked marks is off.

	Shelves

	Rows:	!Sort Field, Production Date, Workorder Id, Part Number, Product Description, Order Qty, Scrap Qty, Scrap Pct, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand
	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Filters:	!Show-Hide AQL Results Filter, Year of Production Date, !Scrap Reason + ID, !Selected Month Focus
	Text:	Scrap Reason Id
	Color:	!AQL Check Button

	Dimensions

	!Scrap Reason Shorthand has 12 members on this sheet
	Members: Gouge; Primer; Seat; Thermoform; Wheel; ...
	The formula is 
	// scrap reason first word
	SPLIT([Scrap Reason], " ", 1)
	!Scrap Reason + ID has 16 members on this sheet
	Members: Gouge In Metal (3); Primer Process Failed (9); Seat Assembly Not As Ordered (10); Thermoform Temperature Too Low (13); Wheel Misaligned (16); ...
	The formula is 
	PROPER([Scrap Reason]) + " " + "(" + STR([Scrap Reason Id]) + ")"
	!Selected Month Focus has 1 members on this sheet
	Members: True
	The formula is 
	// Drill down to selected date range from line graph 
	// Checks status of 2 params

	// Range Highlight Switch must be TRUE to return any selected date
	IF [Range Highlight Toggle] = TRUE AND [Exact Date Toggle] = FALSE

	// Toggle FALSE returns selected date month aggregate
	THEN [!Selected Date Range (Months)]  // Returns month agg of dates selected from WOTimeline

	ELSEIF [Range Highlight Toggle] = TRUE and [Exact Date Toggle] = TRUE

	// Toggle TRUE returns selected date exact date
	THEN [!Selected Date Range] // Returns dates selected from WODayDrilldown

	// Both params FALSE returns all dates
	ELSE TRUE
	END
	Part Number has 70 members on this sheet
	Members: BE-2349; FR-R38B-58; FR-R38R-52; FR-R38R-62; SS-2985; ...
	Product Description has 70 members on this sheet
	Members: BB Ball Bearing; LL Road Frame - Black, 58; LL Road Frame - Red, 52; LL Road Frame - Red, 62; Seat Stays; ...
	Production Date has 49 members on this sheet
	Members: 5/13/2013 12:00:00 AM; 5/19/2013 12:00:00 AM; 5/20/2013 12:00:00 AM; 5/27/2013 12:00:00 AM; 5/6/2013 12:00:00 AM; ...
	Scrap Reason Id has 16 members on this sheet
	Members: 10; 13; 16; 3; 9; ...
	Workorder Id has 134 members on this sheet
	Members: 34296; 34679; 34757; 34762; 34817; ...
	Production Date Year has 4 members on this sheet
	Members: 2011; 2012; 2013; 2014

	Measures

	Sum of Order Qty has 94 members on this sheet
	Members: 11,012; 47; 51; 70; 86; ...
	1 logical table used to determine value:
	scrap_data.csv
	Sum of Scrap Pct has 64 members on this sheet
	Members: 0.0196; 0.0213; 0.0233; 0.027; 0.0286; ...
	1 logical table used to determine value:
	scrap_data.csv
	Sum of Scrap Qty has 36 members on this sheet
	Members: 1; 197; 2; 24; 297; ...
	1 logical table used to determine value:
	scrap_data.csv
	!AQL Check Button has 2 members on this sheet
	Members: False; True
	The formula is 
	// Condtional formatting for [Scrap Pct] above AQL param.

	//IF [!AQL Toggle Calc] = FALSE
	IF [AQL Toggle] = TRUE
	THEN SUM([Scrap Pct]) > [Acceptable Quality Level (AQL)]
	ELSE FALSE
	END
	1 logical table used to determine value:
	scrap_data.csv
	!Show-Hide AQL Results Filter
	1 logical table used to determine value:
	scrap_data.csv
	!Sort Field has 134 members on this sheet
	Members: 1; 2; 3; 4; 6; ...
	The formula is 
	// Uses RANK table calc to sort fields by Sort By param.

	IF [Sort By Field] = "Order Qty  ▲" THEN RANK(SUM([Order Qty]), 'asc')
	ELSEIF [Sort By Field] = "Order Qty  ▼" THEN RANK(SUM([Order Qty]), 'desc')
	ELSEIF [Sort By Field] = "Scrap Qty  ▲" THEN RANK(SUM([Scrap Qty]), 'asc')
	ELSEIF [Sort By Field] = "Scrap Qty  ▼" THEN RANK(SUM([Scrap Qty]), 'desc')
	ELSEIF [Sort By Field] = "Scrap Pct (%)  ▲" THEN RANK(SUM([Scrap Pct]), 'asc')
	ELSEIF [Sort By Field] = "Scrap Pct (%)  ▼" THEN RANK(SUM([Scrap Pct]), 'desc')
	ELSEIF [Sort By Field] = "Production Date  ▲" THEN RANK(SUM(INT([Production Date])), 'asc')
	ELSEIF [Sort By Field] = "Production Date  ▼" THEN RANK(SUM(INT([Production Date])), 'desc')
	ELSE RANK(SUM([Workorder Id]),'asc')
	END
	Results are computed along Production Date, Workorder Id, Part Number, Product Description, !Scrap Reason + ID, Scrap Reason Id, !Scrap Reason Shorthand.
	1 logical table used to determine value:
	scrap_data.csv
	!Placeholder has the value 1 on this sheet.
	The formula is 
	// Constant measure value placeholder 

	// MIN(0)

	MAX(1)

	Parameters

	AQL Toggle (Parameters) has the value True.
	Exact Date Toggle (Parameters) has the value False.
	Acceptable Quality Level (AQL) (Parameters) has the value 2.25%.
	Show or Hide Results (Parameters) has the value Show All.
	Range Highlight Toggle (Parameters) has the value Selected.

</details>
<br><br>


## TextTableHeaders

<details><summary>Description of "TextTableHeaders"</summary>

	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder and !Placeholder.  For pane !Placeholder (2):  The marks are labeled by "Work Order ID".  For pane !Placeholder (3):  The marks are labeled by "Part Number".  For pane !Placeholder (8):  The marks are labeled by "Scrap Reason ID".  For pane !Placeholder (4):  The marks are labeled by "Order Qty".  For pane !Placeholder (5):  The marks are labeled by "Scrap Qty".  For pane !Placeholder (6):  The marks are labeled by "Scrap Pct (%)".  For pane !Placeholder (7):  The marks are labeled by "Scrap Reason".  For pane !Placeholder:  The marks are labeled by "Production Date".

	!Placeholder (2) Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Work Order ID".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Work Order ID"

	!Placeholder (3) Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Part Number".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Part Number"

	!Placeholder (8) Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Scrap Reason ID".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Scrap Reason ID"

	!Placeholder (4) Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Order Qty".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Order Qty"

	!Placeholder (5) Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Scrap Qty".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Scrap Qty"

	!Placeholder (6) Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Scrap Pct (%)".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Scrap Pct (%)"

	!Placeholder (7) Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Scrap Reason".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Scrap Reason"

	!Placeholder Properties

	Marks

	The mark type is Bar.
	The marks are labeled by "Production Date".
	Stacked marks is on.

	Shelves

	Columns:	!Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder, !Placeholder
	Text:	"Production Date"

	Dimensions

	"Scrap Reason ID" has 1 members on this sheet
	Members: Scrap Reason ID
	The formula is 
	"Scrap Reason ID"
	"Work Order ID" has 1 members on this sheet
	Members: Work Order ID
	The formula is 
	"Work Order ID"
	"Part Number" has 1 members on this sheet
	Members: Part Number
	The formula is 
	"Part Number"
	"Order Qty" has 1 members on this sheet
	Members: Order Qty
	The formula is 
	"Order Qty"
	"Scrap Qty" has 1 members on this sheet
	Members: Scrap Qty
	The formula is 
	"Scrap Qty"
	"Scrap Reason" has 1 members on this sheet
	Members: Scrap Reason
	The formula is 
	"Scrap Reason"
	"Production Date" has 1 members on this sheet
	Members: Production Date
	The formula is 
	"Production Date"
	"Scrap Pct (%)" has 1 members on this sheet
	Members: Scrap Pct (%)
	The formula is 
	"Scrap Pct (%)"

	Measures

	!Placeholder has the value 1 on this sheet.
	The formula is 
	// Constant measure value placeholder 

	// MIN(0)

	MAX(1)
</details>

<br><br>

## ScrapReasonHisto

<details><summary>Description of "ScrapReasonHisto"</summary>

Count of Workorder Id and count of Workorder Id for each PROPER([Scrap Reason]).  The marks are labeled by count of Workorder Id.  For pane Count of Workorder Id (2):  Color shows details about !AQL Check: Fixed WO.  The marks are labeled by % of Total Count of Workorder Id and count of Workorder Id. The context is filtered on !Selected Month Focus (Sets), which keeps True. The data is filtered on Production Date Year, which keeps 2013.

Count of Workorder Id Properties

Marks

The mark type is Bar.
The marks are labeled by count of Workorder Id.
Stacked marks is on.

Shelves

Sorted descending by count of Workorder Id within PROPER([Scrap Reason])
Rows:	PROPER([Scrap Reason])
Columns:	Count of Workorder Id, Count of Workorder Id
Filters:	!Selected Month Focus (Sets), Year of Production Date
Level of detail:	ATTR({FIXED [Scrap Reason]:COUNT([Workorder Id])}), Count of Workorder Id, % of Total Count of Workorder Id
Text:	Count of Workorder Id

Count of Workorder Id (2) Properties

Marks

The mark type is Bar.
The marks are labeled by % of Total Count of Workorder Id and count of Workorder Id.
Stacked marks is on.

Shelves

Sorted descending by count of Workorder Id within PROPER([Scrap Reason])
Rows:	PROPER([Scrap Reason])
Columns:	Count of Workorder Id, Count of Workorder Id
Filters:	!Selected Month Focus (Sets), Year of Production Date
Level of detail:	ATTR({FIXED [Scrap Reason]:COUNT([Workorder Id])}), TOTAL(COUNT([Workorder Id]))
Text:	% of Total Count of Workorder Id and count of Workorder Id
Color:	!AQL Check: Fixed WO

Dimensions

!AQL Check: Fixed WO has 2 members on this sheet
Members: Below AQL (Passed); Exceeds AQL (Rejected)
The formula is 
// Condtional formatting for [Scrap Pct] above AQL param.

IF [AQL Toggle] = TRUE
THEN {FIXED [Workorder Id]: SUM([Scrap Pct]) > [Acceptable Quality Level (AQL)]}
ELSE FALSE
END
!AQL Check: Fixed WO is sorted manually.
!Selected Month Focus (Sets) has 1 members on this sheet
Members: True
The formula is 
// Filter ScrapReasonHistory based on Timeline and DrillDown selections 
// Checks status of 2 params

// Range Highlight Switch must be TRUE to return any selected date
IF [Range Highlight Toggle] = TRUE AND [Exact Date Toggle] = FALSE

// Toggle FALSE returns selected date month aggregate
THEN [!Production Date (Months) Set] // Returns month agg of dates selected from WOTimeline

ELSEIF [Range Highlight Toggle] = TRUE and [Exact Date Toggle] = TRUE

// Toggle TRUE returns selected date exact date
THEN [!Production Date (Exact) Set] // Returns dates selected from WODayDrilldown

// Both params FALSE returns all dates
ELSE TRUE
END
PROPER([Scrap Reason]) has 16 members on this sheet
Members: Drill Size Too Large; Drill Size Too Small; Thermoform Temperature Too Low; Trim Length Too Long; Wheel Misaligned; ...
The formula is 
PROPER([Scrap Reason])
Production Date Year has 1 members on this sheet
Members: 2013

Measures

Count of Workorder Id ranges from 1 to 15 on this sheet.
1 logical table used to determine value:
scrap_data.csv
% of Total Count of Workorder Id ranges from 13% to 100% on this sheet.
Computes the current value as a percentage of the total.  Totals summarize values for each PROPER([Scrap Reason]).
1 logical table used to determine value:
scrap_data.csv
ATTR({FIXED [Scrap Reason]:COUNT([Workorder Id])}) ranges from 3 to 15 on this sheet.
The formula is 
ATTR({FIXED [Scrap Reason]:COUNT([Workorder Id])})
1 logical table used to determine value:
scrap_data.csv
TOTAL(COUNT([Workorder Id])) has the value 134 on this sheet.
The formula is 
TOTAL(COUNT([Workorder Id]))
Results are computed along PROPER([Scrap Reason]) for each !AQL Check: Fixed WO.
1 logical table used to determine value:
scrap_data.csv

Parameters

AQL Toggle (Parameters) has the value True.
Exact Date Toggle (Parameters) has the value False.
Acceptable Quality Level (AQL) (Parameters) has the value 2.25%.
Range Highlight Toggle (Parameters) has the value Selected.

</details>

<br><br>

## WOTotal

<details><summary>Description of "WOTotal"</summary>

TOTAL(COUNT([Workorder Id])). The context is filtered on !Selected Month Focus (Sets), which keeps True. The data is filtered on Production Date Year, which keeps 2013.

Marks

The mark type is Text.
Stacked marks is on.

Shelves

Filters:	!Selected Month Focus (Sets), Year of Production Date
Text:	TOTAL(COUNT([Workorder Id]))

Dimensions

!Selected Month Focus (Sets) has 1 members on this sheet
Members: True
The formula is 
// Filter ScrapReasonHistory based on Timeline and DrillDown selections 
// Checks status of 2 params

// Range Highlight Switch must be TRUE to return any selected date
IF [Range Highlight Toggle] = TRUE AND [Exact Date Toggle] = FALSE

// Toggle FALSE returns selected date month aggregate
THEN [!Production Date (Months) Set] // Returns month agg of dates selected from WOTimeline

ELSEIF [Range Highlight Toggle] = TRUE and [Exact Date Toggle] = TRUE

// Toggle TRUE returns selected date exact date
THEN [!Production Date (Exact) Set] // Returns dates selected from WODayDrilldown

// Both params FALSE returns all dates
ELSE TRUE
END
Production Date Year has 1 members on this sheet
Members: 2013

Measures

TOTAL(COUNT([Workorder Id])) has the value 134 on this sheet.
The formula is 
TOTAL(COUNT([Workorder Id]))
Results are computed for all rows.
1 logical table used to determine value:
scrap_data.csv

Parameters

Exact Date Toggle (Parameters) has the value False.
Range Highlight Toggle (Parameters) has the value Selected.

</details>

<br><br>

## WOTimeline
- Dashboard Parameter Action Source [Toggle: Range Highlight T]
	- Parameter: [Range Highlight Toggle]
	- Source Field: [TRUE]
	- Description: Selecting shape activates source field.

- Dashboard Set Action Source [Set: Month Select]
	- Target Set: [!Production Date (Months) Set]
	- Description: Selecting values on sheet adds them to target set.


<details><summary>Description of "WOTimeline"</summary>
	
	The trends of count of Workorder Id for !Production Date (Months) and !Production Date (Months).  Color shows details about !Selected Date Range Highlight Check as an attribute.  Details are shown for various dimensions. The data is filtered on Production Date Year, which keeps 2011, 2012, 2013 and 2014.

	!Production Date (Months) (2) Properties

	Marks

	The mark type is Circle.
	Stacked marks is off.

	Shelves

	Rows:	Count of Workorder Id
	Columns:	!Production Date (Months), !Production Date (Months)
	Filters:	Year of Production Date
	Level of detail:	Max Date in Set (Months), Min Date in Set (Months), TRUE, Max Date in Set (Months) Label, Min Date in Set (Months) Label
	Color:	!Selected Date Range Highlight Check as an attribute

	!Production Date (Months) Properties

	Marks

	The mark type is Line.
	Stacked marks is off.

	Shelves

	Rows:	Count of Workorder Id
	Columns:	!Production Date (Months), !Production Date (Months)
	Filters:	Year of Production Date
	Level of detail:	Max Date in Set (Months), Min Date in Set (Months), TRUE, Max Date in Set (Months) Label, Min Date in Set (Months) Label
	Color:	!Selected Date Range Highlight Check as an attribute

	Dimensions

	TRUE has 1 members on this sheet
	Members: True
	The formula is 
	TRUE
	Min Date in Set (Months) has the value May 2013 on this sheet.
	The formula is 
	// Min Limit Production Date

	{MIN(IF [!Production Date (Months) Set] THEN [!Production Date (Months)] END)}
	Max Date in Set (Months) has the value October 2013 on this sheet.
	The formula is 
	// Max Limit Production Date -- FIXED implied by brackets

	{MAX(IF [!Production Date (Months) Set] THEN [!Production Date (Months)] END)}
	Min Date in Set (Months) Label has 1 members on this sheet
	Members: May 2013
	The formula is 
	// Min Limit Production Date Label based on Range Highlight Toggle

	IF [Range Highlight Toggle] = TRUE
	THEN 
	STR(
	DATENAME('month', [Min Date in Set (Months)])
	+ " "
	+ DATENAME('year', [Min Date in Set (Months)])
	)
	ELSE "N/A"
	END
	Max Date in Set (Months) Label has 1 members on this sheet
	Members: October 2013
	The formula is 
	// Max Limit Production Date Label based on Range Highlight Toggle

	IF [Range Highlight Toggle] = TRUE
	THEN 
	STR(
	DATENAME('month', [Max Date in Set (Months)])
	+ " "
	+ DATENAME('year', [Max Date in Set (Months)])
	)
	ELSE "N/A"
	END
	!Production Date (Months) ranges from June 2011 to June 2014 on this sheet.
	The formula is 
	DATETRUNC('month', [Production Date])
	Production Date Year has 4 members on this sheet
	Members: 2011; 2012; 2013; 2014

	Measures

	!Selected Date Range Highlight Check as an attribute has 2 members on this sheet
	Members: False; True
	The formula is 
	// Boolean - for highlighting selected set members on WOMonthLine


	IF [Range Highlight Toggle] = TRUE
	THEN [!Selected Date Range (Months)]
	ELSE
	FALSE
	END
	1 logical table used to determine value:
	scrap_data.csv
	Count of Workorder Id ranges from 5 to 46 on this sheet.
	1 logical table used to determine value:
	scrap_data.csv

	Parameters

	Range Highlight Toggle (Parameters) has the value Selected.
</details>

<br><br>

## WODayDrilldown
- Dashboard Parameter Action Source [Toggle: Exact Date T]
	- Parameter: [Exact Date Toggle]
	- Source Field: [TRUE]
	- Description: Selecting shape activates source field.

- Dashboard Set Action Source [Set: Exact Date Select]
	- Target Set: [!Production Date (Exact) Set]
	- Description: Selecting values on sheet adds them to target set.

<details><summary>Description of "WODayDrilldown"</summary>
	
	The plots of count of Workorder Id for !Production Date (Exact) and !Production Date (Exact).  Size shows count of Workorder Id.  The marks are labeled by IF COUNT([Workorder Id]) = 1 THEN NULL ELSE COUNT([Workorder ....  Details are shown for various dimensions.  For pane !Production Date (Exact):  Color shows details about In / Out of !Production Date (Exact) Set.  For pane !Production Date (Exact) (2):  Color shows details about !Selected Date Range. The data is filtered on Production Date (Months) Set and Production Date Year. The Production Date (Months) Set filter keeps 6 members. The Production Date Year filter keeps 2011, 2012, 2013 and 2014.

	!Production Date (Exact) Properties

	Marks

	The mark type is Circle.
	The marks are labeled by IF COUNT([Workorder Id]) = 1 THEN NULL ELSE COUNT([Workorder ....
	Stacked marks is off.

	Shelves

	Rows:	Count of Workorder Id
	Columns:	!Production Date (Exact), !Production Date (Exact)
	Filters:	Production Date (Months) Set, Year of Production Date
	Level of detail:	!Production Date (Exact), Count of Workorder Id, Max Date in Set (Months), Min Date in Set (Months), TRUE, !MonthYear String
	Text:	IF COUNT([Workorder Id]) = 1 THEN NULL ELSE COUNT([Workorder ...
	Color:	In / Out of !Production Date (Exact) Set
	Size:	Count of Workorder Id

	!Production Date (Exact) (2) Properties

	Marks

	The mark type is Circle.
	The marks are labeled by IF COUNT([Workorder Id]) = 1 THEN NULL ELSE COUNT([Workorder ....
	Stacked marks is off.

	Shelves

	Rows:	Count of Workorder Id
	Columns:	!Production Date (Exact), !Production Date (Exact)
	Filters:	Production Date (Months) Set, Year of Production Date
	Level of detail:	!Production Date (Exact), Count of Workorder Id, Max Date in Set (Months), Min Date in Set (Months), TRUE, !MonthYear String
	Text:	IF COUNT([Workorder Id]) = 1 THEN NULL ELSE COUNT([Workorder ...
	Color:	!Selected Date Range
	Size:	Count of Workorder Id

	Dimensions

	In / Out of !Production Date (Exact) Set has 1 members on this sheet
	Members: In
	TRUE has 1 members on this sheet
	Members: True
	The formula is 
	TRUE
	!Selected Date Range has 1 members on this sheet
	Members: True
	The formula is 
	// Boolean check for highlighting selected set members on WOTimeline
	// Checks each value against set limits
	// Returns selected range of EXACT DATES

	[!Production Date (Exact)] >= [Min Date in Set]
	AND 
	[!Production Date (Exact)] <= [Max Date in Set]
	Min Date in Set (Months) has the value May 2013 on this sheet.
	The formula is 
	// Min Limit Production Date

	{MIN(IF [Production Date (Months) Set] THEN [Production Date (Months)] END)}
	Max Date in Set (Months) has the value October 2013 on this sheet.
	The formula is 
	// Max Limit Production Date -- FIXED implied by brackets

	{MAX(IF [Production Date (Months) Set] THEN [Production Date (Months)] END)}
	!Production Date (Exact) ranges from 5/6/13 to 10/30/13 on this sheet.
	The formula is 
	[Production Date]
	Production Date Year has 4 members on this sheet
	Members: 2011; 2012; 2013; 2014

	Measures

	Count of Workorder Id ranges from 1 to 10 on this sheet.
	1 logical table used to determine value:
	scrap_data.csv
	IF COUNT([Workorder Id]) = 1 THEN NULL ELSE COUNT([Workorder ... ranges from 3 to 10 on this sheet.
	The formula is 
	IF COUNT([Workorder Id]) = 1 THEN NULL ELSE COUNT([Workorder Id]) END
	1 logical table used to determine value:
	scrap_data.csv
	!MonthYear String has 1 members on this sheet
	Members: May 2013  to  October 2013
	The formula is 
	// Returns MIN and MAX month/year from sheet as string for use in sheet title

	//ATTR( IIF([Max Date in Set (Months)]=[Min Date in Set (Months)], STR([Max Date in Set (Months)]), STR([Min Date in Set (Months)]) + " to " + STR([Max Date in Set (Months)])))

	ATTR(
	IF [Max Date in Set (Months)] = [Min Date in Set (Months)]
	THEN STR(DATENAME ('month', [Max Date in Set])) + " " + STR(DATEPART('year', [Max Date in Set (Months)]))
	ELSE STR( DATENAME('month', [Min Date in Set (Months)])) + " " + STR( DATEPART('year', [Min Date in Set (Months)]))
	+ "  to  " + STR( DATENAME('month', [Max Date in Set])) + " " + STR( DATEPART('year', [Max Date in Set (Months)]))
	END
	)
	1 logical table used to determine value:
	scrap_data.csv

	Sets

	Production Date (Months) Set has 6 members on this sheet
	Members: August 2013; July 2013; June 2013; May 2013; September 2013; ...
</details>

<br><br>

## SelectionInfo1

<details><summary>Description of "SelectionInfo1"
</summary>

	Details are shown for In / Out of !Production Date (Exact) Set, Max Date in Set and Min Date in Set.

	Marks

	The mark type is Text.
	Stacked marks is on.

	Shelves

	Level of detail:	In / Out of !Production Date (Exact) Set, Max Date in Set, Min Date in Set, !DayMonthYear String

	Dimensions

	In / Out of !Production Date (Exact) Set has 1 members on this sheet
	Members: In
	Max Date in Set has the value 6/11/2014 on this sheet.
	The formula is 
	// Max Limit Production Date

	{MAX(IF [!Production Date (Exact) Set] THEN [!Production Date (Exact)] END)}
	Min Date in Set has the value 6/13/2011 on this sheet.
	The formula is 
	// Min Limit Production Date

	{MIN(IF [!Production Date (Exact) Set] THEN [!Production Date (Exact)] END)}

	Measures

	!DayMonthYear String has 1 members on this sheet
	Members: 6/13/2011  ─  6/11/2014
	The formula is 
	// Returns MIN and MAX month/year from sheet as string for use in sheet title

	ATTR(
	IF [Max Date in Set] = [Min Date in Set]
	THEN 
	(
	STR( DATEPART ('month', [Max Date in Set]) ) 
	+ "/" 
	+ STR( DATEPART ('day', [Max Date in Set]) ) 
	+ "/" 
	+ STR( DATEPART('year', [Max Date in Set]) )
	)
	ELSE 
	(
	STR( DATEPART('month', [Min Date in Set]) ) 
	+ "/" 
	+ STR( DATEPART('day', [Min Date in Set]) ) 
	+ "/"
	+ STR( DATEPART('year', [Min Date in Set]) )
	+ "  ─  "  
	+ STR( DATEPART('month', [Max Date in Set]) ) 
	+ "/" 
	+ STR( DATEPART('day', [Max Date in Set]) ) 
	+ "/"
	+ STR( DATEPART('year', [Max Date in Set]) )
	)
	END
	)
	1 logical table used to determine value:
	scrap_data.csv

</details>

<br><br>

## TextTableInfo1

<details><summary>Description of "TextTableInfo1"</summary>

TextTableInfo1 Calc.

Marks

The mark type is Text.
Stacked marks is on.

Shelves

Text:	TextTableInfo1 Calc

Dimensions

TextTableInfo1 Calc has 1 members on this sheet
Members: Showing SELECTED records sorted by
The formula is 
// Used for text table records description.

IF [Range Highlight Toggle] = FALSE and [DrillDown Toggle] = FALSE
THEN "Showing ALL records sorted by"
ELSE "Showing SELECTED records sorted by"
END

Parameters

Range Highlight Toggle (Parameters) has the value Selected.
DrillDown Toggle (Parameters) has the value True.

</details>

<br><br>

## TextTableInfo2
- Dashboard Parameter Action Source [Popup: Scrap Info]
	- Parameter: [Scrap Info Toggle]
	- Source Field: [!Scrap Info Toggle Calc]
	- Description: Selecting shape activates source field that controls window visibility.

- Dashboard Filter Action [Filter: TextTable Info Deselect]
	- Deselects sheet field when used for parameter action.

<details><summary>Description of "TextTableInfo2"</summary>

	"i".  The marks are labeled by "i".  Details are shown for TRUE, FALSE and !Scrap Info Toggle Calc.

	Marks

	The mark type is Circle.
	The marks are labeled by "i".
	Stacked marks is on.

	Shelves

	Level of detail:	TRUE, FALSE, !Scrap Info Toggle Calc
	Text:	"i"

	Dimensions

	"i" has 1 members on this sheet
	Members: i
	The formula is 
	"i"
	TRUE has 1 members on this sheet
	Members: True
	The formula is 
	TRUE
	FALSE has 1 members on this sheet
	Members: False
	The formula is 
	FALSE
	!Scrap Info Toggle Calc has 1 members on this sheet
	Members: False
	The formula is 
	// Used for scrap info popup window visibility on dashboard.

	IF [Scrap Info Toggle]
	THEN FALSE
	ELSE TRUE
	END

	Parameters

	Scrap Info Toggle (Parameters) has the value True.
</details>

<br><br>


## AQLButton
- Dashboard Parameter Action Source [Toggle: AQL Button]
	- Parameter: [AQL Toggle]
	- Source Field: [!AQL Toggle Calc]
	- Description: Selecting shape activates source field.

- Dashboard Filter Action [Filter: AQL Button Deselect]
	- Deselects sheet field when used for parameter action.

<details><summary>Description of "AQLButton"</summary>
	
	Shape shows details about !AQL Toggle Calc.  Details are shown for TRUE and FALSE. The data is filtered on Action (!AQL Toggle Calc), which keeps 1 member.

	Marks

	The mark type is Shape.
	Stacked marks is on.

	Shelves

	Filters:	Action (!AQL Toggle Calc)
	Level of detail:	TRUE, FALSE
	Shape:	!AQL Toggle Calc

	Dimensions

	!AQL Toggle Calc has 1 members on this sheet
	Members: False
	The formula is 
	//Inverts AQL Toggle status for accurate image representation

	IF [AQL Toggle] = FALSE
	THEN TRUE
	ELSEIF [AQL Toggle] = TRUE
	THEN FALSE
	END
	TRUE has 1 members on this sheet
	Members: True
	The formula is 
	TRUE
	FALSE has 1 members on this sheet
	Members: False
	The formula is 
	FALSE

	Parameters

	AQL Toggle (Parameters) has the value True.
</details>

<br><br>

## ShowAllButton
- Dashboard Parameter Action Source [Toggle: Range Highlight F]
	- Parameter: [Range Highlight Toggle]
	- Source Field: [FALSE]
	- Description: Selecting shape activates source field.

- Dashboard Parameter Action Source [Toggle: DrillDown F]
	- Parameter: [DrillDown Toggle]
	- Source Field: [FALSE]
	- Description: Selecting shape activates source field.

- Dashboard Filter Action [Filter: Show All Button Deselect]
	- Deselects sheet field when used for parameter action.

<details><summary>Description of "ShowAllButton"</summary>
	
	Shape shows details about !Show All Button Calc.  Details are shown for FALSE. The data is filtered on Action (!Show All Button Calc), which keeps 1 member.

	Marks

	The mark type is Shape.
	Stacked marks is on.

	Shelves

	Filters:	Action (!Show All Button Calc)
	Level of detail:	FALSE
	Shape:	!Show All Button Calc

	Dimensions

	FALSE has 1 members on this sheet
	Members: False
	The formula is 
	FALSE
	!Show All Button Calc has 1 members on this sheet
	Members: False
	The formula is 
	//Range Highlight Toggle status for accurate image representation of Show All button

	IF [Range Highlight Toggle] = TRUE
	THEN FALSE
	ELSE TRUE
	END

	Parameters

	Range Highlight Toggle (Parameters) has the value Selected.
</details>

<br><br>

## DayButton
- Dashboard Parameter Action Source [Toggle: Range Highlight T]
	- Parameter: [Range Highlight Toggle]
	- Source Field: [TRUE]
	- Description: Selecting shape activates source field.

- Dashboard Parameter Action Source [Toggle: DrillDown T]
	- Parameter: [DrillDown Toggle]
	- Source Field: [Day Button Calc]
	- Description: Selecting shape activates source field.

- Dashboard Filter Action [Filter: Day Button Deselect]
	- Deselects sheet field when used for parameter action.

<details><summary>Description of "DayButton"</summary>
	
	  Shape shows details about !Day Button Calc.  Details are shown for TRUE. The data is filtered on Action (!Date Button Selection) and Action (!Day Button Calc). The Action (!Date Button Selection) filter keeps 1 member. The Action (!Day Button Calc) filter keeps 1 member.

	Marks

	The mark type is Shape.
	Stacked marks is on.
	Shelves

	Filters:	Action (!Date Button Selection), Action (!Day Button Calc)
	Level of detail:	TRUE
	Shape:	!Day Button Calc
	Dimensions

	!Day Button Calc has 1 members on this sheet
	Members: False
	The formula is 
	//Inverts DrillDown Toggle status for accurate image representation

	IIF([DrillDown Toggle] = FALSE, TRUE, FALSE)
	TRUE has 1 members on this sheet
	Members: True
	The formula is 
	TRUE
	Parameters

	DrillDown Toggle (Parameters) has the value True.
</details>

<br><br>

## MonthButton
- Dashboard Parameter Action [Toggle: Exact Date F]
	- Parameter: [Exact Date Toggle]
	- Source Field: [FALSE]
	- Description: Selecting shape activates source field.
	
- Dashboard Parameter Action [Toggle: DrillDown F]
	- Parameter: [DrillDown Toggle]
	- Source Field: [FALSE]
	- Description: Selecting shape activates source field.
	
- Dashboard Filter Action [Filter: Month Button Deselect]
	- Deselects sheet field when used for parameter action.

<details><summary>Description of "MonthButton"</summary>
	
	  Shape shows details about !Month Button Calc.  Details are shown for FALSE. The data is filtered on Action (!Date Button Selection (copy)) and Action (!Month Button Calc). The Action (!Date Button Selection (copy)) filter keeps 1 member. The Action (!Month Button Calc) filter keeps 1 member.

	Marks

	The mark type is Shape.
	Stacked marks is on.

	Shelves

	Filters:	Action (!Date Button Selection (copy)), Action (!Month Button Calc)
	Level of detail:	FALSE
	Shape:	!Month Button Calc

	Dimensions

	!Month Button Calc has 1 members on this sheet
	Members: True
	The formula is 
	//DrillDown Toggle status for accurate image representation - inverse of Day Button

	[DrillDown Toggle]
	FALSE has 1 members on this sheet
	Members: False
	The formula is 
	FALSE

	Parameters

	DrillDown Toggle (Parameters) has the value True.
</details>

<br><br>

## ShowHideButton
- Dashboard Parameter Action [Toggle: Show Hide Results]
	- Parameter: [Show or Hide Results]
	- Source Field: [!Show or Hide Results Calc]
	- Description: Selecting shape activates source field.

- Dashboard Filter Action [Filter: Show Hide Button Deselect]
	- Deselects sheet field when used for parameter action.

<details><summary>Description of "ShowHideButton"</summary>

	Shape shows details about !Show or Hide Toggle Calc.  Details are shown for TRUE and FALSE. The data is filtered on Action (!Show or Hide Toggle Calc), which keeps 1 member.

	Marks

	The mark type is Shape.
	Stacked marks is on.

	Shelves

	Filters:	Action (!Show or Hide Toggle Calc)
	Level of detail:	TRUE, FALSE
	Shape:	!Show or Hide Toggle Calc

	Dimensions

	!Show or Hide Toggle Calc has 1 members on this sheet
	Members: False
	The formula is 
	//Inverts status for accurate image representation

	IF [Show or Hide Results] = FALSE
	THEN TRUE
	ELSEIF [Show or Hide Results] = TRUE
	THEN FALSE
	END
	TRUE has 1 members on this sheet
	Members: True
	The formula is 
	TRUE
	FALSE has 1 members on this sheet
	Members: False
	The formula is 
	FALSE

	Parameters

	Show or Hide Results (Parameters) has the value Show All.
</details>

<br><br>













## Dashboard

