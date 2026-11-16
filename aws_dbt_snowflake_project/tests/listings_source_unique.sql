select listing_id from {{ ref('bronze_listings') }} group by 1 having count(*) > 1 or listing_id is null
