
# 📊 Project 05 — Month-over-Month (MoM) Sales Growth Analysis

## 🎯 Business Problem

The management wants to monitor how company sales are changing every month.

Instead of looking at total sales alone, they want to know:

- Is the business growing?
- Which months performed better?
- Which months experienced decline?
- What was the percentage growth compared to the previous month?

---

# 🧠 My Thought Process

Before writing SQL, I divided the problem into smaller analytical steps.

### Chronology

1. Calculate total sales for every month.
2. Arrange months in chronological order.
3. Retrieve the previous month's sales using **LAG()**.
4. Calculate the difference between current month and previous month.
5. Calculate Month-over-Month Growth Percentage.
6. Interpret positive and negative growth.

---

# 🛠 SQL Concepts Used

- YEAR()
- MONTH()
- MONTHNAME()
- GROUP BY
- SUM()
- Common Table Expressions (CTEs)
- LAG()
- COALESCE()
- Window Functions
- Growth Percentage Calculation

---

# 💻 SQL Solution

*(See `Project_05_Monthly_Growth.sql`)*

---

# 📈 Business Interpretation

This analysis shows whether company sales are improving or declining over time.

Positive values indicate business growth.

Negative values indicate a decline in sales compared to the previous month.

Monitoring these trends helps management identify seasonal demand, market fluctuations and operational issues.

---

# 💡 Business Recommendation

- Investigate months with negative growth.
- Identify seasonal buying behaviour.
- Increase marketing during weaker months.
- Replicate strategies used during high-growth months.
- Use historical trends for sales forecasting.

---

# 📚 Key Learning

This project taught me how SQL can be used for time-series analysis.

I learned to compare current performance with previous periods using Window Functions instead of self joins.
