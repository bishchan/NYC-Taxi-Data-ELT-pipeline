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

<img width="1795" height="812" alt="NYC Taxi ELT Architecture" src="https://github.com/user-attachments/assets/ba49b0b5-ebbc-4d3e-b2c2-8e0589bfd650" />


## 🔄 Pipeline Flow

The data flows through several layers, with each layer responsible for a specific stage of the ELT process.

---

## Layered Data Modeling

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

Typical staging operations include:

- Column renaming
- Data type standardization
- Data cleaning
- Source-specific transformations

### Mart Layer

The staging models are combined into:

`mart_ny_taxi`

The **Mart Layer** applies the business logic required to create a consolidated NYC taxi dataset suitable for analysis.

### Reporting Layer

The final reporting model is:

`reporting_ny_taxi`

The **Reporting Layer** is designed specifically for downstream BI consumption and Tableau reporting.

This separation keeps **raw data, transformation logic, business logic, and reporting logic** organized into distinct layers.
