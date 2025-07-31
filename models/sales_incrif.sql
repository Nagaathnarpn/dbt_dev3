{{
    config(
        materialized='incremental',
        unique_key='id',
        transient=false
    )
}}
select * from {{source('datafeed_shared_schema3','sales_incr')}}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where last_modified_dt > (select max(last_modified_dt) from {{ this }}) 
{% endif %}