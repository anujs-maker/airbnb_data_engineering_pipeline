select host_id from {{ ref('silver_hosts') }} where response_rate < 0 or response_rate > 100 or updated_at < created_at
