{{
    config(
        materialized='ephemeral'
    )
}}

select * from {{ref('pp_hooks')}}