{% snapshot scd_raw_listings %}
/*
  scd_raw_listings -> snapshot table name
  */
{{
   config(
       target_schema='public',
       unique_key='id',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
   )
}}

select * FROM {{ source('airbnb', 'listings') }}

{% endsnapshot %}