{% macro trimmer(column_name, node=none) %}
UPPER(TRIM({{ column_name }}))
{% endmacro %}
