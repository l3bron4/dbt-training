{{ config(materialized='table') }}

SELECT
    users.id AS user_id, -- pk
    users.first_name,
    users.last_name,
    users.email,
    users.phone_number,
    users.organisation_id,
    organisations.organisation_name,
    organisations.pricing_plan,
    organisations.subscribed_at 
FROM {{ ref('stg_modelisation_sources__users') }} AS users
LEFT JOIN {{ ref('stg_modelisation_sources__organisations') }} AS organisations
    ON users.organisation_id = organisations.id