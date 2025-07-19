{% test is_positive(model, column_name) %}
  SELECT *
  FROM {{ model }}
  WHERE {{ column_name }} IS NOT NULL
    AND {{ column_name }} < 0
{% endtest %}
