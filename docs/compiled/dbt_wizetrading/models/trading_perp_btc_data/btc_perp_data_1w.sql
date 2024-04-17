-- This is now a dbt model file, not a raw SQL query
with source_btc_data as
(
    select * from "aoavfbel"."wizetrading"."btc_perptreated_data"
),
final as (
    select * from source_btc_data
    where 1=1
        and interval ='1w'
)

select * from final