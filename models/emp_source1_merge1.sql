{{
    config(
        materialized='incremental',
        alias='merge1_emp_source1',
        incremental_strategy='merge',
        unique_key='id'
    )
}}

select * from {{source('datafeed_shared_schema3','EMP_SOURCE1')}}

{% if is_incremental() %}
where 1=1
{% endif %}