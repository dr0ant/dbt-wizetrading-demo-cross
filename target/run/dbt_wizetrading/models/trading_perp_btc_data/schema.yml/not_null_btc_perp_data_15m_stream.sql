select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select stream
from "aoavfbel"."wizetrading"."btc_perp_data_15m"
where stream is null



      
    ) dbt_internal_test