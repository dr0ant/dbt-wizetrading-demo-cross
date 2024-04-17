with source_btc_data as
(
    select * from {{ source( 'raw_data_btc_perp', 'raw_data') }}
),
final as (
    select * from source_btc_data
)

select * from final
