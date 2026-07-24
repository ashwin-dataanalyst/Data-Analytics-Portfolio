# 📊 Project 02 — Regional Profitability Analysis (Texas Case Study)

## 🎯 Business Problem

The management wants to identify which high-revenue state is generating poor profitability.

Instead of evaluating only sales, the company wants to compare sales, profit, average discount and profit margin to identify inefficient business regions.

---

# 🧠 My Thought Process

Before writing SQL, I divided the problem into smaller analytical steps.

### Chronology

1. Calculate total sales for every state.
2. Calculate total profit for every state.
3. Calculate average discount offered in every state.
4. Identify the top revenue-generating states.
5. Calculate profit margin for those states.
6. Compare profitability among the highest revenue states.
7. Identify the state requiring immediate business attention.

---

# 🛠 SQL Concepts Used

- GROUP BY
- SUM()
- AVG()
- Common Table Expressions (CTEs)
- ORDER BY
- LIMIT
- Calculated Columns

---

# 💻 SQL Solution

*(See `Project_02_Texas_Profitability.sql`)*

---

# 📈 Business Interpretation

The analysis revealed that **Texas** generated one of the highest sales but still produced a **negative profit margin**.

This indicates that increasing sales alone does not guarantee business success.

A region may generate high revenue while simultaneously reducing overall company profitability.

---

# 💡 Business Recommendation

- Review the discount strategy implemented in Texas.
- Identify products consistently generating losses.
- Analyze shipping and logistics costs.
- Re-evaluate pricing strategy before increasing sales volume.
- Focus on improving profitability instead of only increasing revenue.

---

# 📚 Key Learning

This project taught me that business decisions should not be based solely on sales.

Profitability, discounts and margins together provide a much better measure of business performance.
