{{
    config(
        materialized='table',
        query_tag='dbt_1',
        pre_hook="{{set_warehouse(var('vwh'))}}",
        post_hook="{{set_warehouse(var('vwh1'))}}"
    )
}}


select 1 ID