with source as (
    select * from {{ source('raw', 'raw_generation') }}
),

renamed as (
    select *
    from source
)

select * from renamed