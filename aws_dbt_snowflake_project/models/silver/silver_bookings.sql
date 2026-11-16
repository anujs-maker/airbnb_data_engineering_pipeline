{{ config(materialized='incremental', unique_key='booking_id', incremental_strategy='delete+insert') }}
-- Full source upsert: supports late arrivals/updates; does not claim scan reduction.
select booking_id, listing_id,
cast(booking_date as date) as booking_date, nights_booked, booking_amount,
{{ multiply('nights_booked', 'booking_amount', 2) }} as total_amount,
cleaning_fee, service_fee, lower(trim(booking_status)) as booking_status,
cast(created_at as timestamp) as created_at, cast(updated_at as timestamp) as updated_at
from {{ ref('bronze_bookings') }}
