{{
    config(
        materialized='table',
        transient=false
    )
}}
select *  from {{source('datafeed_shared_schema3', 'tab_cust') }}