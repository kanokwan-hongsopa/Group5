select
    cast(id as int) as employee_id,
    cast(first_name as varchar) as first_name,
    cast(last_name as varchar) as last_name,
    cast(job_title as varchar) as job_title
from raw_employees