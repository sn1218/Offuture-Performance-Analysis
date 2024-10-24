# Offuture Performance Analysis
## Overview

Offuture is a global online store specialising in office furniture, technology, and office supplies. Since its launch in 2010, Offuture has delivered high-quality products worldwide. In 2020, the company engaged a consulting firm to analyze their sales data and build predictive models. However, due to inaccuracies in the consultant’s final presentation, Offuture’s CEO, Hamish Boxworth, lost trust in the consultancy’s findings.

To restore confidence, Offuture has approached our Data Science firm to conduct a proof of concept. This project focuses on Descriptive Analytics for Offuture’s historical sales data from 2011 to 2015. The goal is to provide accurate and reliable insights into their performance during this period.

Offuture is not asking any specific questions but expects a comprehensive analysis of their sales, profit, and other key performance metrics to demonstrate our capability before moving to more predictive tasks.

## Objectives

The key objectives of this project are:

* To provide a detailed analysis of Offuture’s sales performance from 2011 to 2015.
* To accurately calculate and present statistics on orders, revenue, and profit.
* To identify best- and worst-performing products in terms of both sales volume and profitability.
* To conduct a thorough market analysis focusing on two key regions: APAC and EU.
* To uncover key profit drivers, including product categories, shipping modes, and customer behavior, providing insights into the factors that influence profitability.

## Project Details
### Tools and Libraries
The tools used for this project include Posgres SQL for data quality checks, and Tableau for data visualisation.

### Data Quality Checks

Before the analysis, a comprehensive data quality audit was performed to ensure the integrity of the provided dataset. The quality check process included:

* Identifying and handling missing data.
* Correcting data inconsistencies and verifying data types.
* Addressing outliers in sales, profit, and order counts.

The detailed quality check process, documented in the Quality Check Form and accompanying .sql file, ensured that all insights were based on reliable data.

### Key Deliverables

The project results are summarised in a presentation slide deck that provides an overview of Offuture’s performance from 2011 to 2015. The key insights include:

1.) Summary statistics
* Total Count of Orders: A detailed count of all orders during the period.
* Total Revenue: An overview of the revenue generated from global sales.
* Total Profit: Calculation of profit across all regions and years.

2.) Product performance
* Best and Worst Performing Products: A global comparison of sales and profit margins by product, identifying the top and bottom performers.

3.) Yearly performance overview
* A breakdown of yearly orders, revenue, and profit, providing a clear picture of Offuture's financial trajectory from 2011 to 2015.

4.) Market analysis by region
* A comprehensive regional analysis, focusing on Offuture’s two most profitable markets: APAC and EU.
 * Year-on-Year Profit: Trends in profitability by region.
 * Best and Worst Performing Products by Profit: Products that drive regional success and those underperforming.

5.) Profit drivers and customer insights
* Most Popular Product Sub-Categories: Products that consistently sell well across various markets.
* Most Popular Shipping Modes: Analysis of shipping methods preferred by customers and their impact on profits.
* Customer Segmentation: Breaking down customer demographics to reveal high-value customer segments.
* Customer Retention and Growth: An analysis of customer loyalty and the company’s ability to grow its customer base over time.

The insights from the analysis were visualised using Tableau.

## Repository Structure
* Offuture_data.xlsx: The primary dataset used for this analysis.
* Offuture_Quality_Check.sql: The SQL script used for data cleaning.
* Team_Having_Quality_Check_Form.pdf: Documentation outlining the steps taken to ensure data integrity.
* Offuture_performance_analysis.pdf: The final slide deck summarising key findings and insights from the analysis.

## How to Use the Project
1. Clone the repository and download the dataset, notebooks, and other project files.
2. Open the Offuture_performance_analysis.pdf to get a high-level overview of Offuture’s performance from 2011 to 2015.
3. Review the Team_Having_Quality_Check_Form.pdf and Offuture_Quality_Check.sql files to understand the steps taken to clean and validate the dataset before conducting the analysis.
4. Explore the data further in Tableau.
