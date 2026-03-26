with source as (
    select * from {{ source('raw', 'raw_prices') }}
),

renamed as (
    select
        price_date,
        hour,
        ptf_price,
        smf_price,
        created_at
    from source
)

select * from renamed