SELECT * FROM "postgres"."public"."dim_listings_cleansed" l
INNER JOIN "postgres"."public"."fct_reviews" r
USING (listing_id)
WHERE l.created_at >= r.review_date