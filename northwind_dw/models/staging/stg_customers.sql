SELECT
    cast(id as varchar) as customer_id,
    cast(company as varchar) as company,
    cast(first_name as varchar) as first_name,
    cast(last_name as varchar) as last_name,
    cast(job_title as varchar) as job_title
FROM raw_customers