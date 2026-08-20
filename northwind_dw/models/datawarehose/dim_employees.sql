WITH source AS (
    SELECT * FROM {{ ref('stg_employees') }}
)

SELECT
    employee_id,
    first_name,
    last_name,
    job_title
FROM source