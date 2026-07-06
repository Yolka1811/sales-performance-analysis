# Sales Performance Analysis

## Project Overview

This project analyzes daily sales performance across product categories. The analysis focuses on revenue trends, deviations from average performance, and short-term revenue changes.

The project includes:
- Daily revenue calculation
- Average daily revenue by category
- Deviation from average (%)
- Short-term trend detection

---

## Dataset

**Table:** `sales`

**Columns:**
- `sale_date` – Date of sale
- `category` – Product category
- `product` – Product name
- `price` – Unit price
- `quantity` – Quantity sold

---

## Business Questions

- What is the daily revenue by category?
- What is the average daily revenue by category?
- How does each day differ from the average?
- Did revenue increase or decrease compared to the previous day?

---

## Approach

First, I calculated daily revenue using:

```sql
SUM(price * quantity)
```

Next, I used a window function to calculate the average daily revenue for each category.

To identify short-term trends, I used `LAG()` to compare revenue with the previous day:

- `1` – Growth
- `-1` – Decline
- `0` – No change

---

## Data Limitation

The dataset covers only three days.

Therefore, this project demonstrates SQL techniques rather than long-term business insights.

---

## SQL Skills Used

- CTE
- Aggregate Functions (`SUM()`)
- Window Functions (`AVG() OVER`, `LAG()`)
- `CASE WHEN`

## Business Skills Demonstrated

- Revenue Analysis
- Trend Analysis
- Performance Monitoring
- Variance Analysis
