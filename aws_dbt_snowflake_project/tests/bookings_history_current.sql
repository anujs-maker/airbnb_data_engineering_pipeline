select booking_id from {{ ref('dim_bookings') }} where dbt_valid_to is null group by 1 having count(*) > 1
