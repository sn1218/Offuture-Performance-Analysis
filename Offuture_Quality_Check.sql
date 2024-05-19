/*Offuture File2: Quality Checks */

/* Table Alterations*/
-- TA01: Changing data-type from varchar to date for correspondant column

-- TA01.1 - Order Date: changing from varchar to date

ALTER TABLE 
	team_having_offuture
ALTER COLUMN 
	"Order Date" TYPE DATE 
USING 
	TO_DATE("Order Date", 'DD/MM/YYYY');


-- TA01.2 - Ship Date: changing from varchar to date

ALTER TABLE 
	team_having_offuture 
ALTER COLUMN 
	"Ship Date" TYPE DATE 
USING 
	TO_DATE("Ship Date", 'DD/MM/YYYY');



/* Query checks */

-- QC01: Variety of checks to ensure data and table structure has been transferred correctly from the source file
-- QC01.1 - Count Rows 
	-- Result = 51,290 / SOURCE match

SELECT
	count("Row ID") row_id_count
FROM 
	team_having_offuture;


-- QC01.2 - Count Distinct Rows 
	-- Result = 51,290 / SOURCE match

SELECT 
	count(DISTINCT("Row ID"))
FROM 
	team_having_offuture;


-- QC01.3 - Count Columns 
	-- Result = 24 / SOURCE match

SELECT 
	COUNT(*) count_of_columns
FROM 
	information_schema.COLUMNS
WHERE 	
	table_name = 'team_having_offuture';


-- QC01.4 - Sum of Columns Sums 
-- Sum of Columns used: row_id, sales, quantity, discount, profit and shipping cost
	-- Result = 1,331,006,116.61916 / SOURCE match

SELECT 
	sum("Row ID") + sum("Sales") + sum("Quantity") + sum("Discount") + sum("Profit") + sum("Shipping Cost") sum_of_columns_sums
FROM team_having_offuture; 


-- QC01.5 - Sum of Rows Sums 
-- Sum of Rows used: row_id, sales, quantity, discount, profit and shipping cost
	-- Result = 1,331,006,116.61916 / SOURCE match

SELECT 
	sum("Row ID" + "Sales" + "Quantity" + "Discount" + "Profit" + "Shipping Cost") sum_of_rows_sums
FROM team_having_offuture; 


-- QC01.6 - Count of NULLs in table 
	-- Result = 41,296 / SOURCE match

SELECT 
    COUNT(*) count_of_nulls_records
FROM 
    team_having_offuture
WHERE 
    "Row ID" IS NULL OR
    "Order ID" IS NULL OR
    "Order Date" IS NULL OR
    "Ship Date" IS NULL OR
    "Ship Mode" IS NULL OR
    "Customer ID" IS NULL OR
    "Customer Name" IS NULL OR
    "Segment" IS NULL OR
    "City" IS NULL OR
    "State" IS NULL OR
    "Country" IS NULL OR
    "Postal Code" IS NULL OR
    "Market" IS NULL OR
    "Region" IS NULL OR
    "Product ID" IS NULL OR
    "Category" IS NULL OR
    "Sub-Category" IS NULL OR
    "Product Name" IS NULL OR
    "Sales" IS NULL OR
    "Quantity" IS NULL OR
    "Discount" IS NULL OR
    "Profit" IS NULL OR
    "Shipping Cost" IS NULL OR
    "Order Priority" IS NULL;


-- QC02: Checking the location and distribution of the NULL values
   
-- QC02.1 - Count of NULLs Row ID column
	-- Results = 0 / SOURCE match
   
SELECT 
	COUNT(*) row_id_nulls
FROM
	team_having_offuture
WHERE
	"Row ID" IS NULL;


-- QC02.2 - Count of NULLs Order ID column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) order_id_nulls
FROM
	team_having_offuture
WHERE
	"Order ID" IS NULL;


-- QC02.3 - Count of NULLs Order Dates column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) order_date_nulls
FROM
	team_having_offuture
WHERE
	"Order Date" IS NULL;


-- QC02.4 - Count of NULLs Ship Date column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) ship_date_nulls
FROM
	team_having_offuture
WHERE
	"Ship Date" IS NULL;


-- QC02.5 - Count of NULLs Ship Mode column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) ship_mode_nulls
FROM
	team_having_offuture
WHERE
	"Ship Mode" IS NULL;


-- QC02.6 - Count of NULLs Customer ID column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) customer_id_nulls
FROM
	team_having_offuture
WHERE
	"Customer ID" IS NULL;


-- QC02.7 - Count of NULLs Customer Name column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) customer_name_nulls
FROM
	team_having_offuture
WHERE
	"Customer Name" IS NULL;


-- QC02.8 - Count of NULLs Segment column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) segment_nulls
FROM
	team_having_offuture
WHERE
	"Segment" IS NULL;


-- QC02.9 - Count of NULLs City column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) city_nulls
FROM
	team_having_offuture
WHERE
	"City" IS NULL;


-- QC02.10 - Count of NULLs State column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) state_nulls
FROM
	team_having_offuture
WHERE
	"State" IS NULL;


-- QC02.11 - Count of NULLs Country column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) country_nulls
FROM
	team_having_offuture
WHERE
	"Country" IS NULL;


-- QC02.12 - Count of NULLs Postal Code column
	-- Results = 41,296 / SOURCE match

SELECT 
	COUNT(*) postal_code_nulls
FROM
	team_having_offuture
WHERE
	"Postal Code" IS NULL;


-- QC02.13 - Count of NULLs Market column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) market_nulls
FROM
	team_having_offuture
WHERE
	"Market" IS NULL;


-- QC02.14 - Count of NULLs Region column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) region_nulls
FROM
	team_having_offuture
WHERE
	"Region" IS NULL;


-- QC02.15 - Count of NULLs Product ID column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) product_id_nulls
FROM
	team_having_offuture
WHERE
	"Product ID" IS NULL;


-- QC02.16 - Count of NULLs Category column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) category_nulls
FROM
	team_having_offuture
WHERE
	"Category" IS NULL;


-- QC02.17 - Count of NULLs Sub-Category column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) sub_category_nulls
FROM
	team_having_offuture
WHERE
	"Sub-Category" IS NULL;


-- QC02.18 - Count of NULLs Product Name column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) product_name_nulls
FROM
	team_having_offuture
WHERE
	"Product Name" IS NULL;


-- QC02.19 - Count of NULLs Sales column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) sales_nulls
FROM
	team_having_offuture
WHERE
	"Sales" IS NULL;


-- QC02.20 - Count of NULLs Quantity column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) quantity_nulls
FROM
	team_having_offuture
WHERE
	"Quantity" IS NULL;


-- QC02.21 - Count of NULLs Discount column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) discount_nulls
FROM
	team_having_offuture
WHERE
	"Discount" IS NULL;


-- QC02.22 - Count of NULLs Profit column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) discount_nulls
FROM
	team_having_offuture
WHERE
	"Profit" IS NULL;


-- QC02.23 - Count of NULLs Shipping Cost column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) shipping_cost_nulls
FROM
	team_having_offuture
WHERE
	"Shipping Cost" IS NULL;


-- QC02.24 - Count of NULLs Order Priority column
	-- Results = 0 / SOURCE match

SELECT 
	COUNT(*) order_priority_nulls
FROM
	team_having_offuture
WHERE
	"Order Priority" IS NULL;



-- QC03: Checking sum, min and max for columns (where it is appropiate)

-- QC03.1: Row ID - Checking sum, min and max for row id since it is an integer 
	-- Results: min = 1, max = 51,290, sum = 1,315,357,695 / SOURCE match

SELECT 
	'Row ID' "Name",
	min("Row ID") min_row_id,
	max("Row ID") max_row_id,
	sum("Row ID") sum_row_id
FROM 
	team_having_offuture;


-- QC03.2: Sales - Checking sum, min and max for sales since it is an integer
	-- Results: min = 0.444, max = 22,638.48, sum = 12,642,501.90988 / SOURCE match

SELECT 
	'Sales' "Name",
	min("Sales") min_sales,
	max("Sales") max_sales,
	sum("Sales") sum_sales
FROM 
	team_having_offuture;


-- QC03.3: Quantity - Checking sum, min and max for quantity since it is an integer
	-- Results: min = 1, max = 14, sum = 178,312 / SOURCE match

SELECT 
	'Quantity' "Name",
	min("Quantity") min_quantity,
	max("Quantity") max_quantity,
	sum("Quantity") sum_quantity
FROM 
	team_having_offuture;


-- QC03.4: Discount - Checking sum, min and max for discount since it is an integer
	-- Results: min = 0, max = 0.85, sum = 7,329.728 / SOURCE match

SELECT 
	'Discount' "Name",
	min("Discount") min_discount,
	max("Discount") max_discount,
	sum("Discount") sum_discount
FROM 
	team_having_offuture;


-- QC03.5: Profit - Checking sum, min and max for profit since it is an integer
	-- Results: min = -6.599.978, max = 8,399.976, sum = 1,467,457.29128 / SOURCE match

SELECT 
	'Profit' "Name",
	min("Profit") min_profit,
	max("Profit") max_profit,
	sum("Profit") sum_profit
FROM
	team_having_offuture;


-- QC03.6: Shipping Cost - Checking sum, min and max for shipping cost since it is an integer
	-- Results: min = 0, max = 933.57, sum = 1,352,820.69 / SOURCE match

SELECT 
	'Shipping Cost' "Name",
	min("Shipping Cost") min_shipping_cost,
	max("Shipping Cost") max_shipping_cost,
	sum("Shipping Cost") sum_shipping_cost
FROM 
	team_having_offuture;


-- QC03.7: Order Date - Checking min and max for Order Date since it is a date 
	-- Results: min = 2011-01-01, max = 2014-12-31 / SOURCE match

SELECT 
	'Order Date' "Name",
	min("Order Date") min_order_date,
	max("Order Date") max_order_date
FROM 
	team_having_offuture;


-- QC03.8: Order Date - Checking min and max for Order DAte since it is a date 
	-- Results: min = 2011-01-03, max = 2015-01-07 / SOURCE match

SELECT 
	'Ship Date' "Name",
	min("Ship Date") min_ship_date,
	max("Ship Date") max_ship_date
FROM 
	team_having_offuture;


-- QC04: Checking if there is any missing data of any type

-- QC04.1: String length check for Region column
	-- Results: min = 4, max = 14 / SOURCE match

SELECT 
	MIN(LENGTH("Region")) min_length_region,
	MAX(LENGTH("Region"))  max_length_region
FROM 
	team_having_offuture;


-- QC04.2: String length check for Product Name column
	-- Results: min = 5, max = 127 / SOURCE match

SELECT 
	MIN(LENGTH("Product Name")) min_length_product_name,
	MAX(LENGTH("Product Name"))  max_length_product_name
FROM 
	team_having_offuture;


-- QC04.3: Check that number of decimals is consistent across Sales column
	-- Results: number of decimals range (0, 5) / SOURCE match
 
SELECT 
    count("Sales"),
    CASE 
        WHEN "Sales"::text LIKE '%.%' THEN 
            LENGTH(SPLIT_PART("Sales"::text, '.', 2))
        ELSE 
            0
    END AS decimal_places_count
FROM 
    team_having_offuture
GROUP BY
	decimal_places_count
ORDER BY 
	decimal_places_count DESC;


-- QC04.4: Check that number of decimals is consistent across Profit column
	-- Results: number of decimals range (0, 5) / SOURCE match

SELECT 
    count("Profit"),
    CASE 
        WHEN "Profit"::text LIKE '%.%' THEN 
            LENGTH(SPLIT_PART("Profit"::text, '.', 2))
        ELSE 
            0
    END AS decimal_places_count
FROM 
    team_having_offuture
GROUP BY
	decimal_places_count
ORDER BY 
	decimal_places_count DESC;


-- QC05: Check that label columns contain the correct amount of distint labels

-- QC05.1: Labels for Sub-Category column
	--Results: Distint count = 17 / SOURCE match

SELECT 
	DISTINCT("Sub-Category") distinct_sub_category
FROM
	team_having_offuture
ORDER BY 
	distinct_sub_category;


-- QC05.2: Labels for Order Priority column
	--Results: Distint count = 4 / SOURCE match

SELECT 
	DISTINCT("Order Priority") distinct_order_priority
FROM
	team_having_offuture;


-- QC06: Check for presence of Special Characters

-- QC06.1: Customer Name column
	--Results: Total entries with SC = 6 / SOURCE match

SELECT 
	DISTINCT("Customer Name") customer_name_sp,
	COUNT("Customer Name") count_customer_name_sp
FROM 
	team_having_offuture
WHERE 
	"Customer Name" ~ '[^a-zA-Z0-9\s''\-\()]'
GROUP BY 
	customer_name_sp
ORDER BY 
	count_customer_name_sp DESC;


-- QC06.2: City column
	--Results: Total entries with SC = 202 / SOURCE match

SELECT 
	DISTINCT("City") city_sp,
	COUNT("City") count_city_sp
FROM 
	team_having_offuture
WHERE 
	"City" ~ '[^a-zA-Z0-9\s''\-\()]'
GROUP BY
	city_sp
ORDER BY
	count_city_sp DESC;


-- QC06.3: State column
	--Results: Total entries with SC = 93 / SOURCE match

SELECT 
	DISTINCT("State") state_sp,
	COUNT("State") count_state_sp
FROM 
	team_having_offuture
WHERE 
	"State" ~ '[^a-zA-Z0-9\s''\-\()]'
GROUP BY 
	state_sp
ORDER BY 
	count_state_sp DESC;


-- QC06.4: Country column
	--Results: Total entries with SC = 0 / SOURCE match

SELECT 
	DISTINCT("Country") country_sp,
	COUNT("Country") count_country_sp
FROM 
	team_having_offuture
WHERE 
	"Country" ~ '[^a-zA-Z0-9\s''\-\()]'
GROUP BY 
	country_sp
ORDER BY 
	count_country_sp DESC;


/* manual checks */

-- MC: Selection of 5 records to verify that data has been successfully imported to the Data Base

SELECT 
	*
FROM 
	team_having_offuture
WHERE 
	"Row ID" IN (1, 1346, 6222, 7812, 40000)
ORDER BY 
	"Row ID";