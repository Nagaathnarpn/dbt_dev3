{% macro db_clone(src_db,tgt_db) %}
{% set db_cl %}
create or replace database {{tgt_db}} clone {{src_db}}
{% endset %}
{% do run_query(db_cl) %}
{% endmacro %}