

select 
listing_id,
host_id,
property_type,
room_type, 
city,
country,
accommodates, 
bedrooms,
bathrooms, 
price_per_night, 
price_per_night,
{{ tag(price_per_night) }} AS price_per_night_tag,
created_at
from 
{{ ref('bronze_listings') }}

