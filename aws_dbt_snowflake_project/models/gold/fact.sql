-- Current-state reporting fact. History is separate; no SCD fan-out joins.
select booking_id, listing_id, host_id, booking_date, booking_status,
total_amount, cleaning_fee, service_fee, accommodates, bedrooms, bathrooms, response_rate
from {{ ref('obt') }}
