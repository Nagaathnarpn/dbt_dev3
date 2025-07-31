{% macro calculate_hike_perc(sal2,sal1) %}
({{sal2}}-{{sal1}})/{{sal1}}*100.0
{% endmacro %}

