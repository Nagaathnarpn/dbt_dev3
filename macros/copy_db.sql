{% macro copy_db(src_db,tgt_db) %}
{% set copydb %}
create or replace database {{tgt_db}} clone {{src_db}};
{% endset %}
{% do run_query(copydb) %}    
{% endmacro %}