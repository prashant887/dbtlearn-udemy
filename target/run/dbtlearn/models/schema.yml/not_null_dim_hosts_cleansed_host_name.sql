select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select host_name
from "postgres"."public"."dim_hosts_cleansed"
where host_name is null



      
    ) dbt_internal_test