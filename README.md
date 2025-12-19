# Titanic-Survival-Rate-Analysis
End-to-end data pipeline using Python, SQL, and Power BI to analyze and visualize key survival drivers of the Titanic.

# Titanic Survival Analysis: End-to-End Data Pipeline

## 📌 Project Overview

This project performs a deep dive into the Titanic dataset to uncover the primary drivers of survival. It demonstrates a complete data lifecycle: from raw data cleaning and feature engineering in **Python**, through relational data querying in **PostgreSQL**, to interactive storytelling in **Power BI**.

### 🎯 Objective

To move beyond simple data exploration and build a professional ETL pipeline that validates historical maritime protocols like "Women and Children First."
---

## 🛠️ Technical Stack

* **Data Processing:** Python (Pandas, NumPy)
* **Exploratory Data Analysis:** Seaborn, Matplotlib
* **Database Management:** PostgreSQL (psycopg2, SQLAlchemy)
* **Business Intelligence:** Power BI Desktop (DAX, Power Query)

---

## 🚀 Data Pipeline

### 1. Data Cleaning & Feature Engineering (Python)

* **Missing Value Imputation:** Extracted **Titles** (Mr, Mrs, Miss, Master) from names to impute missing **Age** values using group medians.
* **Feature Engineering:**
* `Family_Size`: Combined `SibSp` and `Parch` to identify traveling groups.
* `Is_Alone`: Created a binary flag for solo travelers.
* `Has_Cabin`: Simplified the complex Cabin column into a binary "Assigned/Not Assigned" feature.

* **ETL:** Automated the export of cleaned data into a **PostgreSQL** instance.

### 2. Analytical SQL Querying (PostgreSQL)

Using pgAdmin4, I performed advanced aggregation to extract statistical insights:

* **Socio-Economic Analysis:** Confirmed survival rate disparity between 1st Class (62.9%) and 3rd Class (24.2%).
* **Fare Impact:** Grouped passengers into categories (Low, Medium, High) showing that high-fare passengers had a 68% survival rate.
* **Demographic Study:** Analyzed the interaction between being "Alone" and survival, revealing family units had significantly better outcomes.

### 3. Interactive Visualization (Power BI)

Developed a dynamic dashboard to allow recruiters and analysts to filter survival outcomes by:

* Gender and Class interaction.
* Age distribution clusters.
* Embarkation port efficiency.

---

## 📊 Key Insights

* **The Gender Shield:** Single women survived at a rate of **74%**, while single men dropped to **18.89%**.
* **Class Priority:** 1st Class passengers were nearly **3x more likely** to survive than those in 3rd Class.
* **The Family Factor:** Traveling with family members increased survival probability from **30% (Alone)** to **50% (With Family)**.

---

## 💡 How to Replicate

1. **Python:** Run `notebooks/analysis.ipynb` to clean the data and generate the SQL upload.
2. **SQL:** Import the resulting table into PostgreSQL and run `sql/queries.sql` for deep-dive stats.
3. **Power BI:** Open `dashboard/titanic_dashboard.pbix` and point the data source to the `titanic_clean.csv`.

---

## 🖼️ Dashboard Preview

![Dashboard Screenshot]()
---

### 🤝 Connect with Me

If you have questions about this pipeline or want to discuss the findings, feel free to reach out!

* **GitHub:** [Your Profile Link]
* **LinkedIn:** [Your Profile Link]
