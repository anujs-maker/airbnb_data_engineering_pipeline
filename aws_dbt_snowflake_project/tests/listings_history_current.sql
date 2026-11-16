select listing_id from {{ ref('dim_listings') }} where dbt_valid_to is null group by 1 having count(*) > 1
