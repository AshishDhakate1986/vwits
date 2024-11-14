-- Databricks notebook source
-- MAGIC %run /Workspace/Users/dhakate.ashish3@gmail.com/VWITS/includes

-- COMMAND ----------

-- DBTITLE 1,Extract
-- MAGIC %python
-- MAGIC df=spark.read.csv(f"{input_path}circuits.csv",header=True,inferSchema=True)

-- COMMAND ----------

-- DBTITLE 1,Transformation
-- MAGIC %md
-- MAGIC ##### Task
-- MAGIC 1. rename col name circuitId to circuit_id
-- MAGIC 2. renaem col name circuitRef to ciruit_ref
-- MAGIC 3. drop the url col
-- MAGIC 4. add new col ingestion_date with current_timestamp

-- COMMAND ----------

-- DBTITLE 1,Load
-- MAGIC %python
-- MAGIC df1=df.withColumnRenamed("circuitId","circuit_id")\
-- MAGIC .withColumnRenamed("circuitRef","circuit_ref")\
-- MAGIC .drop("url")

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df2=add_ingestion_date(df1)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df2.write.mode("overwrite").saveAsTable("circuits")

-- COMMAND ----------

select * from user_data_2

-- COMMAND ----------

-- MAGIC %fs ls
-- MAGIC
