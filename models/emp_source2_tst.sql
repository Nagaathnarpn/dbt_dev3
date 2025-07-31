{{
    config(
        materialized='table',
        transient=false
    )
}}

select * from {{source('datafeed_shared_schema3','EMP_SOURCE2')}}