{% macro tabl_crt(tab_name) %}
{% set nam %}
create or replace table {{tab_name}}(empno int, name varchar);
{% endset %}
{% do run_query(nam) %}
{% endmacro %}