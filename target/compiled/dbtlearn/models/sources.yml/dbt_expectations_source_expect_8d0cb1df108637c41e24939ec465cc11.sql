




    with grouped_expression as (
    select
        
        
    
  


    

coalesce(array_length((select regexp_matches(room_type, '^\\$[0-9][0-9\\.]+$', '')), 1), 0)


 > 0
 as expression


    from "postgres"."public"."listings"
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors




