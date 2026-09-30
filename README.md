
NYC Taxi Data — End-to-End ELT Pipeline
Project Overview

This project implements an end-to-end ELT data pipeline using New York City taxi trip data.

The pipeline automates data ingestion, stores raw data in Google Cloud Storage, loads the data into BigQuery, transforms and tests the data using dbt, and exposes curated reporting models through Tableau.

The project demonstrates a modern cloud data stack with separate layers for data ingestion, staging, transformation, testing, and reporting.


Technology Stack

Kestra: Data orchestration and pipeline automation
Docker: Local containerized development environment
Google Cloud Storage: Raw data lake / object storage
BigQuery: Cloud data warehouse
dbt: Data transformation, modeling, and testing
Tableau: Business intelligence and visualization


#Architecture

<img width="1795" height="812" alt="Screenshot 2026-09-30 at 3 39 30 PM" src="https://github.com/user-attachments/assets/ba49b0b5-ebbc-4d3e-b2c2-8e0589bfd650" />



Layered Data Modeling
Source Layer

The source layer contains the raw data loaded into BigQuery:

green_taxi
yellow_taxi
zones
Staging Layer

The staging models standardize and prepare the source data for downstream transformations:

stg_green_taxi
stg_yellow_taxi
stg_zones

Typical staging operations include:

Column renaming
Data type standardization
Data cleaning
Source-specific transformations
Mart Layer

The staging models are combined into:

mart_ny_taxi

This layer applies the business logic required to create a consolidated NYC taxi dataset suitable for analysis.

Reporting Layer

The final reporting model:

reporting_ny_taxi

is designed specifically for downstream BI consumption and Tableau reporting.

This separation keeps business logic and reporting logic distinct from the raw source data.

