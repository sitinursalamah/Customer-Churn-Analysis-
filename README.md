# 📉 Customer Churn Analysis Dashboard

This project analyzes customer churn behavior using SQL Server and Power BI. The dataset contains **6,000+ customer records** with demographic, geographic, account, and service information. The goal is to identify churn patterns and build a dashboard that supports **targeted retention strategies** and marketing decisions.

---

## 🛠️ Tools Used

* **SQL Server** — for full ETL processing and data modeling
* **Power BI** — for building interactive and insight-driven dashboards
* **DAX** — for creating custom measures and logic within Power BI
---

## 🎯 Project Objectives

* Build a complete **ETL pipeline** to clean and transform raw customer data
* Visualize and analyze customer churn across:

  * **Demographic** attributes (gender, age group, marital status)
  * **Geographic** attributes (state-level churn rates)
  * **Account & payment** info (tenure, payment method, contract type)
  * **Services** used (internet type, premium features)
* Identify **churn profiles** and provide **actionable insights** for marketing campaigns

---

## 📊 Key Metrics

* **Total Customers**
* **Total Churn & Churn Rate**
* **New Joiners**
* **Churn by Age Group, State, Contract Type, and Services**

---

## 📁 Folder Structure

```
📂 SQL/          → SQL queries for ETL and data exploration
📂 DAX/          → DAX measures and calculated columns  
📂 PowerBI/      → .pbix file for dashboard  
📂 Images/       → Dashboard screenshots  
📄 README.md     → Project overview and documentation
```

---

## 🔍 Key Insights

* Senior customers with long tenure and monthly charges > 100 showed higher churn rates
* Contracts with monthly terms and paperless billing correlated with higher churn
* States like California and Texas had the highest churn volumes
* Customers using **streaming services but without premium support** were more likely to churn

---

## 📸 Dashboard Preview

### 🧾 Summary Dashboard

![Summary Dashboard](https://github.com/sitinursalamah/Customer-Churn-Dashboard/blob/main/Images/Summary.png)


## 🧮 Power BI Measures

```DAX
Total Customers = COUNT(prod_Churn[Customer_ID])

New Joiners = CALCULATE(COUNT(prod_Churn[Customer_ID]), prod_Churn[Customer_Status] = "Joined")

Total Churn = SUM(prod_Churn[Churn Status])

Churn Rate = [Total Churn] / [Total Customers]
```

---

## 🧱 ETL Process in SQL Server

* Created database `db_Churn` and imported CSV into a staging table
* Cleaned and transformed null values using `ISNULL()`
* Created production tables and views (`vw_ChurnData`, `vw_JoinData`) for Power BI
* Explored distinct values and nulls to assess data quality and structure

---

## 📈 Business Use-Case

This dashboard allows decision-makers to:

* **Understand churn drivers** and customer profiles
* **Monitor churn rate** across various customer segments
* **Design targeted campaigns** to reduce churn and improve retention
* **Segment users** for personalized offerings based on tenure, services, and payment behavior

---
