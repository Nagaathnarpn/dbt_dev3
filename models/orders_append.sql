{{config(materialized='incremental',
incremental_strategy='append')}}

select * from {{source('datafeed_shared_schema3','raw_orders')}}