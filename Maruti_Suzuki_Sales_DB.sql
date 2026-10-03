create database  maruti_sales_july2026;
use maruti_sales_july2026;

rename table maruti_sales_raw_sample to raw_sales;

select * from raw_sales;

SELECT COUNT(*) FROM raw_sales;

SELECT COUNT(*) - COUNT(DISTINCT CONCAT(Sale_Date,Model,Dealer_City,Units_Sold)) AS dup_count FROM raw_sales;

SELECT * FROM raw_sales WHERE Units_Sold IS NULL OR Model IS NULL;

UPDATE raw_sales SET Fuel_Type=TRIM(UPPER(Fuel_Type));
UPDATE raw_sales SET Model = TRIM(Model);

UPDATE raw_sales SET Sale_Date = STR_TO_DATE(Sale_Date, '%d-%b-%y') WHERE Sale_Date LIKE '__-___-__';

ALTER TABLE raw_sales MODIFY Sale_Date DATE;

DELETE FROM raw_sales WHERE Units_Sold IS NULL;

UPDATE raw_sales SET Transmission = 'Manual' WHERE Transmission IS NULL;

select * from raw_sales;

select count(*) from raw_sales;

CREATE TABLE clean_sales AS SELECT DISTINCT * FROM raw_sales;

select * from clean_sales;

select count(*) from clean_sales;