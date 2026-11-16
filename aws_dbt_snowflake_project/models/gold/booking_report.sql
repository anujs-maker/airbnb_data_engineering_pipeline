-- Value, not recognized revenue: confirmed bookings only, fees excluded.
select cast(date_trunc('month', booking_date) as date) as booking_month,
city, count(*) as confirmed_bookings, sum(total_amount) as booked_value
from {{ ref('obt') }}
where booking_status = 'confirmed'
group by 1, 2
