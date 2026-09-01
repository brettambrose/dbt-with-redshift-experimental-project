{% macro seconds_to_minutes(column_name, decimal_places=2) %}
    ROUND(({{ column_name }} / 60)::numeric(16, {{ decimal_places }}), {{ decimal_places }})
{% endmacro %}