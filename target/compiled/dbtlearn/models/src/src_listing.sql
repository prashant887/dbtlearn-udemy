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