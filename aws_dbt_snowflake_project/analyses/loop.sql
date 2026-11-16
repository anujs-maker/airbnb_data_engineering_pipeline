-- Preserved exploratory example; uses a declared dependency.
select * from {{ ref('bronze_listings') }}
