{% macro tag(col) -%}
(CASE WHEN CAST({{ col }} AS INT) < 100 THEN 'low'
      WHEN CAST({{ col }} AS INT) <= 200 THEN 'medium'
      ELSE 'high' END)
{%- endmacro %}