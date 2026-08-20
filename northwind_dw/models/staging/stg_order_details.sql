select
    cast(order_id as int) as order_id,
    cast(product_id as int) as product_id,
    cast(unit_price as double) as unit_price,
    cast(quantity as double) as quantity,
    cast(discount as double) as discount
from raw_order_details