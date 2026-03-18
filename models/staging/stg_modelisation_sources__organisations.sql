with 

source as (

    select * from {{ source('modelisation_sources', 'organisations') }}

),

renamed as (

    select
        id,
        organisation_name,
        pricing_plan,
        street,
        city,
        zipcode,
        price_per_month,
        subscribed_at

    from source

)

select * from renamed