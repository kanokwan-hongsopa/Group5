select
    cast(id as int) as product_id,
    cast(product_name as varchar) as product_name,
    cast(list_price as double) as unit_price
from raw_products