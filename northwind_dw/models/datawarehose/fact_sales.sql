WITH orders AS (
    SELECT * FROM {{ ref('stg_orders') }}
),

order_details AS (
    SELECT * FROM {{ ref('stg_order_details') }}
)

SELECT
    o.order_id,
    o.customer_id,
    o.employee_id,
    od.product_id,
    od.quantity,
    od.unit_price,
    od.discount,
    (od.quantity * od.unit_price * (1 - od.discount)) AS net_sales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id