WITH source AS (
    SELECT * FROM {{ ref('stg_products') }}
)

SELECT
    product_id,
    product_name,
    unit_price
FROM source