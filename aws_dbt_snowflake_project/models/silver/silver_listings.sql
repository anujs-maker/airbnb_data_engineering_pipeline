{{ config(materialized='incremental', unique_key='listing_id', incremental_strategy='delete+insert') }}
-- Full source upsert: supports late arrivals/updates; does not claim scan reduction.
select listing_id, host_id, property_type, room_type, city, country,
accommodates, bedrooms, bathrooms, price_per_night,
{{ tag('price_per_night') }} as price_per_night_tag,
cast(created_at as timestamp) as created_at, cast(updated_at as timestamp) as updated_at
from {{ ref('bronze_listings') }}
