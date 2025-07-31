{% macro create_new_table(table_name) %}
{% set createtab %}
create or replace table {{table_name}} (name varchar, sal float);
{% endset %}
{% do run_query(createtab) %}
{% endmacro %}