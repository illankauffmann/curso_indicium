with
    source as (
        select * 
        from {{ source('erp', 'suppliers') }}
    ),
    renamed as (
        select 
        cast(ID as int) as supplier_pk
        ,cast(COMPANYNAME as varchar) as supplier_name
        ,cast(CONTACTNAME  as varchar) as supplier_contact_name
        --,cast(CONTACTTITLE as varchar) as supplier_contact_title
        --,cast(ADDRESS as varchar) as supplier_address
        ,cast(CITY as varchar) as supplier_city
        ,cast(REGION as varchar) as supplier_region
        --,cast(POSTALCODE as varchar) as supplier_postalcode
        ,cast(COUNTRY as varchar) as supplier_country
        --,cast(PHONE as varchar) as supplier_phone
        --,cast(FAX as varchar) as supplier_fax
        --,cast(HOMEPAGE as varchar) as supplier_homepage
        from source
    )

    select * from renamed