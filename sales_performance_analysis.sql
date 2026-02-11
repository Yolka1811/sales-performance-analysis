/* 
Sales Performance Analysis
Daily revenue, deviation from average, and short-term trends
*/

WITH daily_revenue AS (
    SELECT
        category,
        sale_date,
        SUM(price * quantity) AS daily_revenue
    FROM sales
    GROUP BY category, sale_date
),

metrics AS (
    SELECT
        *,
        ROUND(
            AVG(daily_revenue) OVER (PARTITION BY category),
            2
        ) AS avg_daily_revenue,
        LAG(daily_revenue) OVER (
            PARTITION BY category
            ORDER BY sale_date
        ) AS prev_day_revenue
    FROM daily_revenue
),

final_metrics AS (
    SELECT
        category,
        sale_date,
        daily_revenue,
        avg_daily_revenue,
        prev_day_revenue,
        ROUND(
            (daily_revenue - avg_daily_revenue)
            / avg_daily_revenue * 100,
            2
        ) AS deviation_pct,
        CASE
            WHEN prev_day_revenue IS NULL THEN NULL
            WHEN daily_revenue > prev_day_revenue THEN 1
            WHEN daily_revenue < prev_day_revenue THEN -1
            ELSE 0
        END AS trend_direction
    FROM metrics
)

SELECT
    *
FROM final_metrics
ORDER BY category, sale_date;
