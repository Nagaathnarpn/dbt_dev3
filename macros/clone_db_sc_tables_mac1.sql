{% macro clone_db_sc_tables_mac1(trg_db,src_db,trg_sc,src_sc,table_list) %}
{% set create_db %}  
create or replace database {{trg_db}};
{% endset %}
{% do run_query(create_db) %}

{% set create_sc %}  
create or replace schema {{trg_db}}.{{trg_sc}};
{% endset %}
{% do run_query(create_sc) %}

{% for i in table_list %}
{% set src_table=src_db~'.'~src_sc~'.'~i %}
{% set tgt_table=trg_db~'.'~trg_sc~'.'~i %}

{% set create_tables %}  
create or replace table {{tgt_table}} clone {{src_table}};
{% endset %}
{% do run_query(create_tables) %}
{% endfor %}
{% endmacro %}