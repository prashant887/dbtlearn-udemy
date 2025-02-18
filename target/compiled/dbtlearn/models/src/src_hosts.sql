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