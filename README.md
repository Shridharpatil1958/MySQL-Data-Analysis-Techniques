<div align="center">

# 📊 MySQL Data Analysis Techniques
### 15 Days SQL Challenge for Data Analysts

<img src="https://img.shields.io/badge/MySQL-Database-orange?style=for-the-badge&logo=mysql" />
<img src="https://img.shields.io/badge/SQL-Data%20Analysis-blue?style=for-the-badge" />
<img src="https://img.shields.io/badge/Business-Analytics-success?style=for-the-badge" />
<img src="https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge" />

---

### 🚀 From SQL Fundamentals to Advanced Business Analytics

A structured 15-day SQL learning roadmap covering data extraction, cleaning, transformation, KPI analysis, query optimization, and real-world business problem-solving using MySQL.

📈 **Data Analysis** • 🗄️ **Database Management** • 📊 **Business Intelligence** • 🚀 **Portfolio Project**

</div>

---

# 🎯 Project Overview

This repository contains a comprehensive **15-Day MySQL Challenge** designed to build practical SQL skills required for Data Analyst and Business Analyst roles.

The project simulates a real-world retail business environment and demonstrates how SQL can be used to answer business questions, generate KPIs, and uncover actionable insights.

---

# 💡 Business Objectives

✅ Analyze customer purchasing behavior

✅ Track sales and revenue performance

✅ Identify top-performing products

✅ Generate business KPIs

✅ Learn advanced SQL techniques

✅ Prepare for Data Analyst interviews

---

# 🏗️ Retail Database Schema

<p align="center">
<img src="screenshots/erd_diagram.png" width="90%">
</p>

The project uses a realistic retail business database consisting of:

| Table | Description |
|---------|-------------|
| 👥 Customers | Customer information |
| 🛍️ Products | Product catalog |
| 📦 Categories | Product categories |
| 🚚 Suppliers | Supplier information |
| 🧾 Orders | Customer orders |
| 🧮 Order_Items | Product-level transactions |
| 📊 Inventory | Stock management |
| 💳 Payments | Payment records |

---

# 🗺️ Learning Roadmap

## 📅 Day-by-Day SQL Journey

| Day | Topic |
|------|--------|
| Day 01 | SQL Basics |
| Day 02 | Filtering Data |
| Day 03 | Sorting & Grouping |
| Day 04 | Joins |
| Day 05 | Subqueries |
| Day 06 | Window Functions |
| Day 07 | CASE Statements |
| Day 08 | Data Cleaning |
| Day 09 | Date Functions |
| Day 10 | String Functions |
| Day 11 | Advanced Aggregations |
| Day 12 | Query Optimization |
| Day 13 | Real-World Business Project |
| Day 14 | KPI Analysis |
| Day 15 | Final Data Analysis Project |

---

# 📂 Project Structure

```text
mysql-data-analysis-techniques/
│
├── Day01_Basics/
├── Day02_Filtering/
├── Day03_Sorting_Grouping/
├── Day04_Joins/
├── Day05_Subqueries/
├── Day06_Window_Functions/
├── Day07_Case_Statements/
├── Day08_Data_Cleaning/
├── Day09_Date_Functions/
├── Day10_String_Functions/
├── Day11_Aggregations_Advanced/
├── Day12_Performance_Optimization/
├── Day13_Real_World_Project/
├── Day14_KPI_Analysis/
├── Day15_Final_Project/
│
├── Dataset/
├── Screenshots/
├── README.md
└── retail_database.sql
```

---

# 🔥 SQL Concepts Demonstrated

## Day 01 — Basics

```sql
SELECT COUNT(*) AS total_customers
FROM customers;
```

## Day 04 — Joins

```sql
SELECT
    c.customer_name,
    o.order_id,
    o.total_amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
```

## Day 06 — Window Functions

```sql
SELECT
    product_name,
    revenue,
    RANK() OVER(
        ORDER BY revenue DESC
    ) AS revenue_rank
FROM sales;
```

---

# 📊 SQL Outputs

## Customer Analysis

<p align="center">
<img src="screenshots/customer_analysis.png" width="90%">
</p>

---

## Revenue Analysis

<p align="center">
<img src="screenshots/revenue_analysis.png" width="90%">
</p>

---

## Product Performance

<p align="center">
<img src="screenshots/product_performance.png" width="90%">
</p>

---

# 📈 Business Questions Solved

### Customer Analytics

- Who are the top spending customers?
- Which customers generate the highest revenue?
- What is the average customer order value?

### Sales Analytics

- What are the monthly sales trends?
- Which products sell the most?
- What is the highest revenue-generating category?

### Inventory Analytics

- Which products have low stock?
- Which categories need replenishment?

### Revenue Analytics

- Revenue by month
- Revenue by category
- Revenue by supplier

---

# 📊 Key Performance Indicators

## Revenue KPIs

💰 Total Revenue

💰 Average Order Value

💰 Monthly Revenue Growth

---

## Customer KPIs

👥 Total Customers

👥 Repeat Customer Rate

👥 Customer Lifetime Value

---

## Product KPIs

🛍️ Top Selling Products

🛍️ Category Performance

🛍️ Product Revenue Contribution

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|---------|----------|
| MySQL | Database Management |
| SQL | Data Analysis |
| MySQL Workbench | Query Development |
| Python | Optional Data Cleaning |
| Power BI | Optional Visualization |
| GitHub | Version Control |

---

# 🚀 Skills Demonstrated

### SQL

- SQL Query Writing
- Joins
- Subqueries
- Window Functions
- CTEs
- Stored Procedures

### Data Analytics

- KPI Analysis
- Customer Analytics
- Revenue Analytics
- Business Reporting

### Database Management

- Relational Databases
- Schema Design
- Query Optimization
- Data Cleaning

---

# 📈 Real-World Applications

This project simulates tasks commonly performed by:

### Data Analysts
- Business Reporting
- KPI Monitoring
- Sales Analysis

### Business Analysts
- Revenue Analysis
- Customer Segmentation
- Trend Identification

### Database Professionals
- Query Optimization
- Data Management
- Database Design

---

# 💼 Portfolio Value

This project demonstrates:

✅ SQL Query Writing

✅ Relational Database Concepts

✅ Data Cleaning Techniques

✅ Business KPI Analysis

✅ Analytical Thinking

✅ Real-World Problem Solving

---

# 🔮 Future Enhancements

### Phase 2
- Power BI Dashboard
- SQL Interview Questions
- KPI Reporting Dashboard

### Phase 3
- Python EDA Integration
- Automated Reports
- Dashboard Deployment

### Phase 4
- Predictive Analytics
- Customer Segmentation
- Sales Forecasting

---

# 👨‍💻 Author

## Shridhar Patil

📧 patilshridhar1958@gmail.com

🐙 GitHub: https://github.com/Shridharpatil1958

🌐 Portfolio: https://chrono-skill-viz.lovable.app/

---

<div align="center">

### ⭐ If this project helped you learn SQL, consider starring the repository.

**Built with MySQL • SQL • Data Analytics • Business Intelligence**

</div>
