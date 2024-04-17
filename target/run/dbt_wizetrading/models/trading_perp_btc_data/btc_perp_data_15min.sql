
  create view "aoavfbel"."wizetrading"."btc_perp_data_15min__dbt_tmp"
    
    
  as (
    with source_btc_data as
(
    select * from "aoavfbel"."wizetrading"."raw_data"
),
final as (
    select * from source_btc_data
)

select * from final
  );