{{ config(materialized='ephemeral') }}
select listing_id, property_type, room_type, city, country, price_per_night_tag, created_at as listings_created_at from {{ ref('silver_listings') }}
