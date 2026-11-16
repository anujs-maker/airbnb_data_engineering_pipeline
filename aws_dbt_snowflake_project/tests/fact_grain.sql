select 'fact_grain_or_value' as failure
where (select count(*) from {{ ref('fact') }}) <> (select count(*) from {{ ref('silver_bookings') }})
or (select sum(total_amount) from {{ ref('fact') }}) <> (select sum(total_amount) from {{ ref('silver_bookings') }})
