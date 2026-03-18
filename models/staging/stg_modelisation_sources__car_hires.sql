with 

source as (

    select * from {{ source('modelisation_sources', 'car_hires') }}

),

renamed as (

    select
        id,
        booking_reference,
        start_date,
        end_date,
        booked_at,
        organisation_id,
        organisation_name,
        main_driver_ids,
        car_rental_company_id,
        car_model_name,
        price,
        commission_percentage,
        booking_status,
        booking_validated_at,
        payment_done_at

    from source

)

select * from renamed