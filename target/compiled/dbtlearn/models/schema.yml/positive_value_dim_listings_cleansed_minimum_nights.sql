
SELECT
    *
FROM
    "postgres"."public"."dim_listings_cleansed"
WHERE
    minimum_nights < 1
