-- Seeds are explicitly referenced so dbt orders bootstrap and models correctly.
select * from {{ ref('hosts_input') }}
