{% macro response_quality(col) -%}
CASE WHEN {{ col }} IS NULL THEN 'unknown'
     WHEN {{ col }} >= 95 THEN 'very good'
     WHEN {{ col }} >= 60 THEN 'good'
     ELSE 'fair' END
{%- endmacro %}
