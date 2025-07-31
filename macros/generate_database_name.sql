{% macro generate_database_name(custom_schema_name,node) %}
{% if custom_schema_name is not none %}    
{{custom_schema_name}}
{% else %}
{{target.database}}
{% endif %}
{% endmacro %}
