
  create view "aoavfbel"."wizetrading"."btc_perp_data_15m__dbt_tmp"
    
    
  as (
    -- This is now a dbt model file, not a raw SQL query
with source_btc_data as
(
    select * from "aoavfbel"."wizetrading"."btc_perptreated_data"
),
final as (
    select * from source_btc_data
    where 1=1
        and interval ='15m'
)

select * from final
  );