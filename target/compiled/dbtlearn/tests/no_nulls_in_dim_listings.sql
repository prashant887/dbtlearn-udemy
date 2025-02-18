
    SELECT * FROM "postgres"."public"."dim_listings_cleansed" WHERE
        listing_id IS NULL OR
        listing_name IS NULL OR
        room_type IS NULL OR
        minimum_nights IS NULL OR
        host_id IS NULL OR
        price IS NULL OR
        created_at IS NULL OR
        updated_at IS NULL OR
        
    FALSE
        