{% snapshot ss_customer_check %}

{{config(strategy='check',
unique_key='id',
check_cols=['phone','spent'],
invalidate_hard_deletes=true)}}

select * from {{source('datafeed_shared_schema3','customers_ss')}}

{% endsnapshot %}