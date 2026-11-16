-- Reject invalid values; no arbitrary minimum booking value.
select booking_id from {{ ref('silver_bookings') }}
where nights_booked <= 0 or booking_amount < 0 or cleaning_fee < 0 or service_fee < 0
   or updated_at < created_at
