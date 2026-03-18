with 

source as (

    select * from {{ source('modelisation_sources', 'calendrier_months') }}

),

renamed as (

    select
        month

    from source

)

select * from renamed