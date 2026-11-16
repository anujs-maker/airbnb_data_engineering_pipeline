-- One row per booking using current unique entity rows, not history tables.
select b.*, l.host_id, l.property_type, l.room_type, l.city, l.country,
l.accommodates, l.bedrooms, l.bathrooms, l.price_per_night_tag,
l.created_at as listings_created_at,
h.host_name, h.host_since, h.is_superhost, h.response_rate, h.response_rate_quality,
h.created_at as hosts_created_at
from {{ ref('silver_bookings') }} b
left join {{ ref('silver_listings') }} l on b.listing_id = l.listing_id
left join {{ ref('silver_hosts') }} h on l.host_id = h.host_id
