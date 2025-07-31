{{
    config(
        materialized='table',
        transient=false
    )
}}

select * from {{source('datafeed_shared_schema3', 'pizza_sales') }}