WITH source AS (
    SELECT * FROM {{ ref('stg_customers') }}
)

SELECT
    customer_id,
    company,
    first_name,
    last_name,
    job_title
FROM source