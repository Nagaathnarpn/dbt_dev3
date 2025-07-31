{% snapshot snap_customers_ss_ts %}

{{config(strategy='timestamp',
unique_key='id',
updated_at='updt',
invalidate_hard_deletes=true)}}

select * from {{source('datafeed_shared_schema3','customers_ss')}}
{% endsnapshot %}