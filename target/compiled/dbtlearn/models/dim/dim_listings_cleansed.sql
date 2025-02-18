/*
create table for this dim alone
*/


WITH  __dbt__cte__src_listing as (
with raw_listing as (
    select * from "postgres"."public"."listings"
)
select
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price,
    created_at,
    updated_at
from raw_listing
), src_listing AS (
    SELECT * FROM __dbt__cte__src_listing
)
SELECT
  listing_id,
  listing_name,
  room_type,
  CASE
    WHEN minimum_nights = 0 THEN 1
    ELSE minimum_nights
  END AS minimum_nights,
  host_id,
   price,
  created_at,
  updated_at
FROM
  src_listing