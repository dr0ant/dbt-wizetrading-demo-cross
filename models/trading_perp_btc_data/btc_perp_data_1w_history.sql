-- This is now a dbt model file, not a raw SQL query
with source_btc_data as
(
    select * from {{ ref('btc_perptreated_data') }}
),
final as (
    select * from source_btc_data
    where 1=1
         AND source_btc_data.interval::text = '1w'::text
)

select * from final
