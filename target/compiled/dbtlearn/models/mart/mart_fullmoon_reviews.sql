
    

WITH fct_reviews AS (
    SELECT * FROM "postgres"."public"."fct_reviews"
),
full_moon_dates AS (
    SELECT * FROM "postgres"."public"."seed_full_moon_dates"
)

SELECT
  r.*,
  CASE
    WHEN fm.full_moon_date IS NULL THEN false
    ELSE true
  END AS is_full_moon
FROM
  fct_reviews
  r
  LEFT JOIN full_moon_dates
  fm
  ON (date(r.review_date) = fm.full_moon_date+INTERVAL '1 day')