with source_btc_data as
(
    select * from "aoavfbel"."wizetrading"."raw_data"
),
final as (
    select * from source_btc_data
)

select * from final