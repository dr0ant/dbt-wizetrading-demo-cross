select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    stream as unique_field,
    count(*) as n_records

from "aoavfbel"."wizetrading"."btc_perp_data_15m"
where stream is not null
group by stream
having count(*) > 1



      
    ) dbt_internal_test