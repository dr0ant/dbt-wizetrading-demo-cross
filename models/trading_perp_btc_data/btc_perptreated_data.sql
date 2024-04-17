with source_btc_data as
(
    select * from {{ source( 'raw_data_btc_perp', 'raw_data') }}
),
final as 
(
   select
       stream      :: varchar as stream
       ,"data_e"   :: varchar as event_type
       ,"data_E"   :: bigint as event_time
       ,"data_s"   :: varchar as symbole_src
       ,"data_k_t" :: bigint as candle_open_time
       ,"data_k_T" :: bigint as candle_close_time
       ,"data_k_s" :: varchar as symbole
       ,"data_k_i" :: varchar as interval
       ,"data_k_f" :: int as first_trade_id
       ,"data_k_L" :: int as last_trade_id
       ,"data_k_o" :: decimal as openprice
       ,"data_k_c" :: decimal as close_price
       ,"data_k_h" :: decimal as high_price
       ,"data_k_l" :: decimal as low_price
       ,"data_k_v" :: int as base_asset_volume
       ,"data_k_n" :: int as  nb_trades
       ,"data_k_x" :: boolean as candle_closed
       ,"data_k_q" :: decimal as quote_asset_volume
       ,"data_k_V" :: decimal as taker_buy_base_asset_volume
       ,"data_k_Q" :: decimal as taker_buy_quote_asset_volume
    from wizetrading.raw_data
)
select * from final

