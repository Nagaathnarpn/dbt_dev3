{{config(materialized='table',
pre_hook="truncate table {{this}}",
post_hook="truncate table {{source('datafeed_shared_schema3','student_1')}}")}}

with tab11 as
(
select * from {{source('datafeed_shared_schema3','student_1')}}
)
select * from tab11