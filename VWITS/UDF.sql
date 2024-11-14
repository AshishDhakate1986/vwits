-- Databricks notebook source


-- COMMAND ----------

create function function_name(para datatype)
Returns datatype
return logic

-- COMMAND ----------

create function function_name(para datatype)
Returns datatype
return logic

-- COMMAND ----------

create or replace function job_description(type string)
returns string
return concat("The job is ",type )

-- COMMAND ----------

select * from test.circuits

-- COMMAND ----------

create or replace function test.job_description(type string)
returns string
return concat("The job is ",type )

-- COMMAND ----------

create function test.get_pay_description(country string)
returns string
return
  case
    when country="Malaysia" THEN "High Pay"
    when country= "Spain" THEN "GOOD pay"
    else 'Medium Pay'
  end;

-- COMMAND ----------

Create global temporary view test.JobDescription (select name,location,country from test.circuits )

-- COMMAND ----------

select *, test.get_pay_description(search_country) as message from ny_vwits.test.

-- COMMAND ----------

Create temporary view test.JobDescription AS select name,location,country from test.circuits
