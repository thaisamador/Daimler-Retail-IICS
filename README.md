# Daimler Retail IICS - Sales Integration Project

## Overview
ETL integration project built with Informatica Intelligent Cloud Services (IICS) that extracts vehicle sales data from a local distributor database and loads it into Salesforce as Opportunities.

## Business Context
The distributor "Autos del Sur" registers weekly corporate sales in a local MySQL database. This pipeline automatically moves that data to Salesforce so directors can track revenue through Opportunities linked to existing Accounts.

## Architecture
MySQL (Source) + Snowflake (Vendors) → IICS Mapping → Salesforce (Target)

## Tech Stack
-MySQL - local distributor database
-Snowflake - vendor reference data
-Informatica IICS - ETL mapping and orchestration
-Salesforce - target CRM (Opportunity object)

## Transformations Applied
-LTRIM(RTRIM()): Clean spaces from VIN numbers
-'Venta - ' \|\| VIN:  Build Opportunity Name
-REPLACECHR(): Replace underscores with spaces in notes
-Lookup: Account.Name = empresa_cliente - Link Opportunity to Salesforce Account
-'Closed Won': Set StageName for all records

## Data Quality Rules (Filter)
-monto_total > 0
-vin_vehiculo NOT NULL
-nombre_vendedor NOT NULL

## Results
-6 records read from MySQL and Snowflake
-5 records successfully loaded to Salesforce
-1 record filtered out (NULL vendor name)
