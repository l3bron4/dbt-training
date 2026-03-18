with 

source as (

    select * from {{ source('modelisation_sources', 'car_rental_companies') }}

),

renamed as (

    select
        id,
        name,
        street_name,
        city,
        zipcode

    from source

)

select * from renamed