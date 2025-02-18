

WITH  __dbt__cte__src_hosts as (
WITH raw_hosts AS (
          select * from "postgres"."public"."hosts"
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts
), src_hosts AS (
    SELECT * FROM __dbt__cte__src_hosts
)
SELECT
    host_id,
    coalesce(
        host_name,
        'Anonymous'
    ) AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts