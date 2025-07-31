{% macro clone_db_sc_tables_mco(trg_db,trg_sc,src_db,src_sc,table_list) %}
    {% set create_db %}
    create or replace database {{trg_db}};
    {% endset %}
    {% do run_query(create_db) %}

 {% set create_sc %}
    create or replace schema {{trg_db}}.{{trg_sc}};
    {% endset %}
    {% do run_query(create_sc) %}

{% for tb1 in table_list %}
{% set source_table=src_db~'.'~src_sc~'.'~tb1 %}
{% set target_table=trg_db~'.'~trg_sc~'.'~tb1 %}
{% set clone_tables %}
create or replace table {{target_table}} clone {{source_table}};
{% endset %}
{% do run_query(clone_tables) %}
{% endfor %}
{% endmacro %}