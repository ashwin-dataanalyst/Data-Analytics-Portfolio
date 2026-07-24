
# 📊 Project 04 — Customer Segmentation using RFM Analysis

## 🎯 Business Problem

The marketing team wants to identify different types of customers based on their purchasing behaviour.

Instead of treating every customer equally, the company wants to classify customers according to:

- **Recency** → How recently they purchased.
- **Frequency** → How often they purchase.
- **Monetary** → How much money they spend.

This helps the company target customers with personalized marketing strategies.

---

# 🧠 My Thought Process

Before writing SQL, I divided the problem into smaller analytical steps.

### Chronology

1. Find the last purchase date of every customer.
2. Calculate the number of orders placed by every customer.
3. Calculate the total money spent by every customer.
4. Calculate Recency using the latest order date in the dataset.
5. Divide customers into five equal buckets using NTILE().
6. Reverse the scores so that a better customer gets a higher score.
7. Generate RFM Scores for customer segmentation.

---

# 🛠 SQL Concepts Used

- GROUP BY
- MAX()
- COUNT(DISTINCT)
- SUM()
- DATEDIFF()
- Common Table Expressions (CTEs)
- NTILE()
- Window Functions

---

# 💻 SQL Solution

*(See `Project_04_RFM_Analysis.sql`)*

---

# 📈 Business Interpretation

Customers with high RFM scores are the company's most valuable customers.

Customers with low Recency scores have not purchased recently and may require re-engagement.

Customers with high Monetary scores contribute significant revenue.

Customers with high Frequency scores purchase regularly and are ideal candidates for loyalty programs.

---

# 💡 Business Recommendation

### Champions (555)

Reward them with exclusive offers and premium services.

### Loyal Customers

Maintain engagement through loyalty programs.

### Big Spenders

Recommend premium products and personalized offers.

### Frequent Buyers

Encourage repeat purchases through memberships.

### At Risk Customers

Launch retention campaigns before they stop purchasing.

### Lost Customers

Send win-back campaigns or discount coupons.

---

# 📚 Key Learning

This project taught me how SQL can be used for customer segmentation.

I learned how businesses classify customers using RFM analysis to improve retention, increase revenue and optimize marketing strategies.
# 🎯 Customer Segmentation Logic

| RFM Score | Customer Type |
|-----------|---------------|
| 555 | Champions |
| 554 / 545 / 455 | Loyal Customers |
| High M | Big Spenders |
| High F | Frequent Buyers |
| High R | Recent Customers |
| 1XX / X1X / XX1 | At Risk |
| 111 | Lost Customers |

This segmentation allows businesses to design targeted marketing campaigns instead of treating every customer equally.
