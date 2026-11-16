{{ config(materialized='incremental', unique_key='host_id', incremental_strategy='delete+insert') }}
-- Full source upsert: supports late arrivals/updates; does not claim scan reduction.
select host_id, trim(host_name) as host_name,
cast(host_since as date) as host_since, is_superhost, response_rate,
{{ response_quality('response_rate') }} as response_rate_quality,
cast(created_at as timestamp) as created_at, cast(updated_at as timestamp) as updated_at
from {{ ref('bronze_hosts') }}
