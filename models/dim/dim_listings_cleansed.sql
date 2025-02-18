/*
create table for this dim alone
*/
{{
config(materialized='view')
 }}

WITH src_listing AS (
    SELECT * FROM {{ ref('src_listing') }}
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