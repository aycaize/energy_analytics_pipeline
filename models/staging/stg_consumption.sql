with source as (
    select * from {{ source('raw', 'raw_consumption') }}
),

renamed as (
    select *
    from source
)

select * from renamed