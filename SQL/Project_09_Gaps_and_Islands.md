
# 📊 Project 09 — Longest Increasing Monthly Sales Streak (Gaps & Islands)

## 🎯 Business Problem

The management wants to identify the longest consecutive period during which monthly sales continuously increased.

Instead of checking individual months manually, the company wants an automated solution to detect continuous growth streaks.

This type of analysis is commonly known as the **Gaps & Islands** problem in SQL.

---

# 🧠 My Thought Process

Before writing SQL, I divided the problem into smaller analytical steps.

### Chronology

1. Calculate total sales for every month.
2. Retrieve previous month's sales.
3. Calculate the month-to-month sales difference.
4. Identify where a growth streak breaks.
5. Assign every streak a unique group ID.
6. Count the number of months in every streak.
7. Identify the longest increasing streak.

---

# 🛠 SQL Concepts Used

- Common Table Expressions (CTEs)
- LAG()
- CASE WHEN
- Running SUM()
- GROUP BY
- MAX()
- Window Functions
- Gaps & Islands Pattern

---

# 💻 SQL Solution

*(See `Project_09_Gaps_and_Islands.sql`)*

---

# 📈 Business Interpretation

Instead of looking only at total sales, this analysis identifies periods where the business consistently improved over multiple months.

Long growth streaks usually indicate:

- Successful marketing campaigns
- Strong customer demand
- Effective pricing strategy
- Healthy business performance

---

# 💡 Business Recommendation

- Study the factors responsible for the longest growth period.
- Replicate successful strategies in future quarters.
- Investigate reasons behind broken growth streaks.
- Use streak analysis as an executive KPI.

---

# 📚 Key Learning

This was one of the most challenging SQL problems I solved.

It taught me how to break a complex business problem into multiple analytical steps and solve it using CTEs and Window Functions instead of writing one large query.
