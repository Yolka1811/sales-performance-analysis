# 📊 Sales Performance Analysis

## 📌 Project Overview
This project analyzes daily sales performance by product category.  
The goal is to understand revenue dynamics and short-term trends.

The analysis includes:
- Daily revenue calculation
- Average revenue comparison
- Deviation from average (%)
- Short-term trend detection

---

## 📂 Dataset
Table: `sales`

Columns:
- sale_date – Date of sale
- category – Product category
- product – Product name
- price – Unit price
- quantity – Quantity sold

---

## 🎯 Business Questions
1. What is the daily revenue by category?
2. What is the average daily revenue for each category?
3. How much does each day deviate from the average revenue?
4. Does revenue increase or decrease compared to the previous day?

---

## 🧠 Analytical Approach

Daily revenue is calculated as:
SUM(price * quantity)


To compare each day with the category average, a window function is used:
AVG(daily_revenue) OVER (PARTITION BY category)


Short-term trends are analyzed using:
LAG(daily_revenue)


Trend direction logic:
- 1 → growth
- -1 → decline
- 0 → no change

---

## ⚠️ Data Limitations
The dataset covers a short time period.  
Trend conclusions are limited and should be interpreted carefully.  
A longer time range would provide more reliable insights.

---

## 🛠️ SQL Techniques Used
- CTE (Common Table Expressions)
- Aggregation (SUM)
- Window functions (AVG OVER, LAG)
- CASE WHEN logic

---

## ✅ Key Takeaways
- Revenue fluctuates around the category average.
- Short-term growth and decline patterns are visible.
- Reliable trend analysis requires a larger dataset.
