{{
    config(
        materialized='incremental',
        incremental_strategy='append'
    )
}}

select * from {{source('datafeed_shared_schema3','EMP_SOURCE1')}}

{% if is_incremental() %}
where 1=1
{% endif %}