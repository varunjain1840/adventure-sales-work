-- 1. Create Database Scoped Credential using Managed Identity
CREATE DATABASE SCOPED CREDENTIAL cred_var
WITH 
    IDENTITY = 'Managed Identity';
GO

-- 2. Create External Data Source for Silver Layer
CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://storage.blob.core.windows.net/silver',
    CREDENTIAL = cred_var
);
GO

-- 3. Create External Data Source for Gold Layer
CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://storage.blob.core.windows.net/gold',
    CREDENTIAL = cred_var
);
GO

create EXTERNAL FILE FORMAT format_parquet
with 
(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
)


CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION='extsales',
    DATA_SOURCE=source_gold,
    file_format=format_parquet
)AS
select * from gold.sales


SELECT * from gold.extsales;
