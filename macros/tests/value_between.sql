
-- tests/value_between.sql

{% test value_between(model, column_name, min_value, max_value) %}

SELECT *
FROM {{ model }}  
WHERE {{ column_name }} IS NOT NULL
  AND ({{ column_name }} < {{ min_value }} OR {{ column_name }} > {{ max_value }})

{% endtest %}
