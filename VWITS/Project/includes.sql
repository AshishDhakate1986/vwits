-- Databricks notebook source
use catalog ny_vwits;

-- COMMAND ----------

create schema if not exists ny_vwits.bronze;
create schema if not exists ny_vwits.silver;
create schema if not exists ny_vwits.gold;

-- COMMAND ----------

-- MAGIC %python
-- MAGIC input_path="dbfs:/mnt/nyadls/processdata/"

-- COMMAND ----------

-- MAGIC %python
-- MAGIC from pyspark.sql.functions import *

-- COMMAND ----------

-- MAGIC %python
-- MAGIC def add_ingestion_col(df):
-- MAGIC   df1=df.withColumn("ingestion_date",current_timestamp())
-- MAGIC   return df1
