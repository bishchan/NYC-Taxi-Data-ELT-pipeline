# NYC Taxi Data — End-to-End ELT Pipeline

## 📌 Project Overview

This project implements an **end-to-end ELT (Extract, Load, Transform) data pipeline** using New York City taxi trip data.

The pipeline automates data ingestion with **Kestra**, stores raw data in **Google Cloud Storage**, loads the data into **BigQuery**, transforms and tests the data using **dbt**, and exposes curated reporting models through **Tableau**.

The project demonstrates a modern cloud data stack with separate layers for:

- Data ingestion
- Data lake storage
- Data warehousing
- Data transformation
- Data quality testing
- Business intelligence and reporting

---

## 🛠️ Technology Stack

| Technology | Purpose |
|------------|---------|
| **Kestra** | Data orchestration and pipeline automation |
| **Docker** | Local containerized development environment |
| **Google Cloud Storage** | Raw data lake / object storage |
| **BigQuery** | Cloud data warehouse |
| **dbt** | Data transformation, modeling, and testing |
| **Tableau** | Business intelligence and data visualization |

---

## 🏗️ Architecture

<img width="1736" height="664" alt="Screenshot 2026-09-30 at 4 01 31 PM" src="https://github.com/user-attachments/assets/4bb6df0f-04e4-44e2-9adc-78fd7e3c338b" />


## 🔄 Pipeline Flow

The data flows through several layers, with each layer responsible for a specific stage of the ELT process.

---

## 🗂️ Layered Data Modeling

### Source Layer

The **Source Layer** contains the raw data loaded into BigQuery:

- `green_taxi`
- `yellow_taxi`
- `zones`

### Staging Layer

The **Staging Layer** standardizes and prepares the source data for downstream transformations.

**Staging models:**

- `stg_green_taxi`
- `stg_yellow_taxi`
- `stg_zones`

Staging operations include:

- Column renaming
- Data type standardization
- Data cleaning
- Source-specific transformations

### Mart Layer

The fact and dimension tables are combined:

`mart_ny_taxi`

The **Mart Layer** applies the business logic required to create a consolidated NYC taxi dataset suitable for analysis.

### Reporting Layer

The final reporting model is:

`reporting_ny_taxi`

The **Reporting Layer** is optimized and designed specifically for downstream BI consumption and Tableau reporting.

## 🧪 Data Quality & Testing

**dbt** is used not only for data transformation but also for **data quality validation**.

Tests are applied to ensure that transformed datasets meet expected data quality requirements before being consumed by Tableau.

### Data Quality Tests

Examples of implemented tests include:

- Not-null checks
- Unique key validation
- Accepted values
- Relationship tests

These tests help identify data quality issues early in the transformation process and create a controlled layer between raw warehouse data and BI reporting. Currently it is only set to warn.

---

## 📊 Tableau Dashboard

The final `reporting_ny_taxi` model is connected to **Tableau** to provide an analytical view of NYC taxi activity.

The dashboard provides comparisons between **green and yellow taxi** services across New York City.

<img width="2122" height="1170" alt="Screenshot 2026-09-30 at 4 08 30 PM" src="https://github.com/user-attachments/assets/6c1a669f-1a2c-4c30-a86f-d191fc13926f" />


### 📈 Key Metrics

The dashboard includes:

- **Total Revenue**
- **Total Trips**
- **Average Trip Cost**
- **Metrics by Borough**

The visualizations allow users to:

- Analyze taxi activity over time
- Compare green and yellow taxi services
- Examine revenue and trip volume
- Compare taxi activity across NYC boroughs

p.s. visualization and analysis is not the main goal of this project


