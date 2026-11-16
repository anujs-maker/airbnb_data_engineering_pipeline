select host_id from {{ ref('bronze_hosts') }} group by 1 having count(*) > 1 or host_id is null
