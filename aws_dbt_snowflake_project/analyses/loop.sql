-- models/bronze_listings.sql

{{ config(materialized='incremental', unique_key='id') }}

SELECT *
FROM {{ source('staging', 'listings') }}

{% if is_incremental() %}
WHERE updated_at > (
    SELECT COALESCE(MAX(updated_at), '1900-01-01')
    FROM {{ this }}
)
{% endif %}

{{
  config(
    materialized = 'incremental',
    )
}}
