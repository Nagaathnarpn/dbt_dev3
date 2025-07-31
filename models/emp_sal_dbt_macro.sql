{{config(materialized='table')}}

with tabhike_perc
as
(
select empno,ename,
({{calculate_hike_perc('new_sal','old_sal')}}) as hike_per 
from {{source('datafeed_shared_schema3','emp_sal')}}
)
select * from tabhike_perc
