select host_id from {{ ref('dim_hosts') }} where dbt_valid_to is null group by 1 having count(*) > 1
