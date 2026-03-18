with 

source as (

    select * from {{ source('modelisation_sources', 'rooms') }}

),

renamed as (

    select
        id,
        user_id,
        booking_reference,
        start_date,
        end_date,
        booked_at,
        organisation_id,
        organisation_name,
        hotel_id,
        room_id,
        room_fee,
        booking_status,
        booking_validated_at,
        payment_done_at

    from source

)

select * from renamed