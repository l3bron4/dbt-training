with 

source as (

    select * from {{ source('modelisation_sources', 'users') }}

),

renamed as (

    select
        id,
        organisation_id,
        first_name,
        last_name,
        phone_number,
        email

    from source

)

select * from renamed