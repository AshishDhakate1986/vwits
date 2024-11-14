-- Databricks notebook source
-- MAGIC %python
-- MAGIC from pyspark.sql.functions import *

-- COMMAND ----------

-- MAGIC %python
-- MAGIC input_path="/Volumes/datamaster/test/raw/"

-- COMMAND ----------

-- MAGIC %python
-- MAGIC def add_ingestion_date(input_df):
-- MAGIC     output_df=input_df.withColumn("ingestion_date",current_timestamp())
-- MAGIC     return output_df

-- COMMAND ----------

create schema if not exists formula1;
use formula1

-- COMMAND ----------

-- MAGIC %fs ls

-- COMMAND ----------



-- COMMAND ----------

-- MAGIC %python
-- MAGIC df=spark.read.csv("dbfs:/databricks-datasets/bikeSharing/data-001/day.csv",header=True,inferSchema=True)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df.createOrReplaceTempView("bikeview")

-- COMMAND ----------

select * from bikeview
