with relation_columns as (

        
        select
            cast('LISTING_ID' as TEXT) as relation_column,
            cast('INTEGER' as TEXT) as relation_column_type
        union all
        
        select
            cast('LISTING_NAME' as TEXT) as relation_column,
            cast('CHARACTER VARYING' as TEXT) as relation_column_type
        union all
        
        select
            cast('ROOM_TYPE' as TEXT) as relation_column,
            cast('CHARACTER VARYING' as TEXT) as relation_column_type
        union all
        
        select
            cast('MINIMUM_NIGHTS' as TEXT) as relation_column,
            cast('INTEGER' as TEXT) as relation_column_type
        union all
        
        select
            cast('PRICE' as TEXT) as relation_column,
            cast('DOUBLE PRECISION' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_ID' as TEXT) as relation_column,
            cast('INTEGER' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_NAME' as TEXT) as relation_column,
            cast('CHARACTER VARYING' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_IS_SUPERHOST' as TEXT) as relation_column,
            cast('BOOLEAN' as TEXT) as relation_column_type
        union all
        
        select
            cast('CREATED_AT' as TEXT) as relation_column,
            cast('TIMESTAMP WITHOUT TIME ZONE' as TEXT) as relation_column_type
        union all
        
        select
            cast('UPDATED_AT' as TEXT) as relation_column,
            cast('TIMESTAMP WITHOUT TIME ZONE' as TEXT) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'PRICE'
            and
            relation_column_type not in ('DOUBLE PRECISION')

    )
    select *
    from test_data