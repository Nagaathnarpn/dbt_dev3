{% macro create_db_sc_tab(trg_db,src_db,trg_sc,src_sc,table_list) %}
{% set create_db %}
create or replace database {{trg_db}};
{% endset %}
{% do run_query(create_db) %}

{% set create_sc %}
create or replace schema {{trg_db}}.{{trg_sc}}
{% endset %}
{% do run_query(create_sc) %}

{% for tab in table_list %}
{% set source_table=src_db~'.'~src_sc~'.'~tab %}
{% set target_table=trg_db~'.'~trg_sc~'.'~tab %}

{% set create_tab %}
create or replace table {{target_table}} clone {{source_table}}
{% endset %}
{% do run_query(create_tab) %}
{% endfor %}    
{% endmacro %}