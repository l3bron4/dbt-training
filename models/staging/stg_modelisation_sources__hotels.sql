with 

source as (

    select * from {{ source('modelisation_sources', 'hotels') }}

),

renamed as (

    select
        id,
        name,
        street,
        city,
        zipcode,
        commission_percentage

    from source

)

select * from renamed