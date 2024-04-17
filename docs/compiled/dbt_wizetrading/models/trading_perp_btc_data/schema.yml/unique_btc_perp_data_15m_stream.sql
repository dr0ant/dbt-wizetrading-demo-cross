
    
    

select
    stream as unique_field,
    count(*) as n_records

from "aoavfbel"."wizetrading"."btc_perp_data_15m"
where stream is not null
group by stream
having count(*) > 1


