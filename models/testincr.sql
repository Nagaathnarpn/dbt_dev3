{{
    config(
        materialized='incremental',  
    )
}}

select * from {{source('datafeed_shared_schema3','EMP_SOURCE1')}}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where id > (select max(id) from {{ this }}) 
{% endif %}