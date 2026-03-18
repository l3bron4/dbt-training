with 

source as (

    select * from {{ source('modelisation_sources', 'teams') }}

),

renamed as (

    select
        organisation_id,
        id,
        team

    from source

)

select * from renamed