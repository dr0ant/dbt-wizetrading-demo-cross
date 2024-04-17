
    
    

with all_values as (

    select
        stream as value_field,
        count(*) as n_records

    from "aoavfbel"."wizetrading"."btc_perp_data_15m"
    group by stream

)

select *
from all_values
where value_field not in (
    'btcusd_perp@kline_4h','btcusd_perp@kline_5m','btcusd_perp@kline_1h','btcusd_perp@kline_1d','btcusd_perp@kline_15m','btcusd_perp@kline_1w'
)


