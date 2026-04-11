{{ config(
    materialized='incremental',
    unique_key='booking_id'
) }}

SELECT
booking_id,
listing_id, 
booking_date, 
{{ multiply('NIGHTS_BOOKED', 'BOOKING_AMOUNT',2) }} as total_amount, 
cleaning_fee,
service_fee,
booking_status,
created_at 
FROM {{ ref('bronze_bookings') }}



