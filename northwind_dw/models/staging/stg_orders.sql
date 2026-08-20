select
    cast(id as int) as order_id,
    cast(customer_id as int) as customer_id,
    cast(employee_id as int) as employee_id,
    cast(order_date as timestamp) as order_date
from raw_orders