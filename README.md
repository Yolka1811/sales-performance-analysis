# Sales Performance Analysis

## Project Overview
I analyzed a sales dataset for three days.  
The goal was to understand daily revenue and short-term changes.

I focused on:
- Daily revenue calculation
- Average daily revenue by category
- Deviation from average (%)
- Short-term trend detection

---

## Dataset
Table: sales

Columns:
- sale_date – Date of sale
- category – Product category
- product – Product name
- price – Unit price
- quantity – Quantity sold

---

## Business Questions
1. What is the daily revenue by category?
2. What is the average daily revenue?
3. How much does each day differ from the average?
4. Does revenue increase or decrease compared to the previous day?

---

## Approach

First, I calculated daily revenue using:

SUM(price * quantity)

Then, I used a window function to calculate the average revenue for each category without grouping the table.

To check the trend, I used LAG to compare each day with the previous day:
- 1 = growth
- -1 = decline
- 0 = no change

---

## Data Limitation
The dataset includes only a few days.  
Because of this, we cannot make strong conclusions about long-term trends.  
For better analysis, we need more data.

---

## SQL Skills Used
- CTE
- SUM
- AVG OVER
- LAG
- CASE WHEN
