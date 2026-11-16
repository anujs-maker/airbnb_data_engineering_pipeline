{{ config(materialized='ephemeral') }}
select host_id, host_name, host_since, is_superhost, response_rate_quality, created_at as hosts_created_at from {{ ref('silver_hosts') }}
