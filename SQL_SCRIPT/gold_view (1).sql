-- Gold layer: Calendar
CREATE OR ALTER VIEW gold.Calendar
AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://storage.blob.core.windows.net/silver/Calender/**',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Gold layer: Customers
CREATE OR ALTER VIEW gold.Customers
AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://storage.blob.core.windows.net/silver/Customers/**',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Gold layer: Product
CREATE OR ALTER VIEW gold.Product
AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://storage.blob.core.windows.net/silver/Product/**',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Gold layer: Returns
CREATE OR ALTER VIEW gold.Returns
AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://storage.blob.core.windows.net/silver/Returns/**',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Gold layer: Sales
CREATE OR ALTER VIEW gold.Sales
AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://storage.blob.core.windows.net/silver/Sales/**',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Gold layer: SubCategory
CREATE OR ALTER VIEW gold.SubCategory
AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://storage.blob.core.windows.net/silver/SubCategory/**',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Gold layer: Territory
CREATE OR ALTER VIEW gold.Territory
AS 
SELECT * 
FROM OPENROWSET(
    BULK 'https://storage.blob.core.windows.net/silver/Territory/**',
    FORMAT = 'PARQUET'
) AS query1;
GO