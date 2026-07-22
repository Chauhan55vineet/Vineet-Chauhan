# Vineet-Chauhan
# Decoding Customer Value: A SQL-Driven Retention Strategy
## Project Overview

This project analyzes customer transactional and behavioral data for a Direct-to-Consumer (D2C) fashion brand using SQL.

The objective is to identify high-value customers, understand purchasing behavior, evaluate promotion effectiveness, and provide data-driven recommendations to improve customer retention while reducing dependency on discounts.


## Business Problem

The company has customer transaction data but lacks business intelligence to answer questions such as:

- Who are the most valuable customers?
- Are discounts creating loyal customers?
- Which product categories drive repeat purchases?
- Which customer segments should be targeted?
- How can retention be improved?

This project answers these questions using SQL analysis.

## Objectives

- Identify loyal customers
- Measure Customer Lifetime Value (CLV)
- Analyze purchasing behavior
- Evaluate promotional effectiveness
- Segment customers
- Recommend retention strategies

- ## Dataset

The dataset contains approximately 3,900 customers and includes:

- Customer Information
- Orders
- Products
- Payments
- Shipping
- Promotions

- ## Database Schema

Include your ER Diagram here.

![ER Diagram](images/ERD.png)

## SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- CASE WHEN
- CTEs
- Window Functions
- JOINs
- Aggregate Functions
- Date Functions
- Subqueries

- SQL-Customer-Retention/
│
├── README.md
├── dataset/
│     customers.csv
│     orders.csv
│
├── sql/
│     01_data_cleaning.sql
│     02_customer_segmentation.sql
│     03_clv_analysis.sql
│     04_retention.sql
│
├── images/
│     dashboard.png
│     erd.png
│
└── report/
      Final_Report.pdf

  ## Business Questions

1. Who are the most valuable customers?
2. Which customers buy only during promotions?
3. Which product categories have the highest retention?
4. Which payment methods are most common?
5. Which regions generate the highest revenue?
6. What predicts long-term customer value?

## Analysis

- Customer Segmentation
- RFM Analysis
- Customer Lifetime Value (CLV)
- Repeat Purchase Analysis
- Promotion Impact Analysis
- Geographic Analysis
- Product Category Performance

- ## Key Findings

- 20% of customers generated nearly 70% of total revenue.
- Customers purchasing without discounts showed higher lifetime value.
- Footwear customers had the highest repeat purchase rate.
- Email promotions produced better retention than blanket discounts.

- 
