{% macro trimmer (columm_name, node) %}
{{ col_name | trim | upper }}
{% endmacro %}