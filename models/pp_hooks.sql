 {{
    config(
        materialized='table',
        query_tag='dbt_11',
        pre_hook=["{{set_vwh(var('warehouse2'))}}"],
        post_hook=["{{set_vwh(var('warehouse1'))}}"]
    )
}}
select 1 ID