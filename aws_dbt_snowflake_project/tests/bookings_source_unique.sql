select booking_id from {{ ref('bronze_bookings') }} group by 1 having count(*) > 1 or booking_id is null
