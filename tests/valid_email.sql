
SELECT *
FROM {{ ref('stg_students') }}
WHERE email IS NOT NULL
  AND NOT REGEXP_CONTAINS(
    CAST(email AS STRING),
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
  )
