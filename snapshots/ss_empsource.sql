
{% snapshot ss_empsource %}
    {{
        config(
            unique_key='id',
            strategy='check',
            check_cols='all',
            invalidate_hard_deletes=true

        )
    }}

    select * from {{ source('datafeed_shared_schema3', 'EMP_SOURCE') }}
 {% endsnapshot %}