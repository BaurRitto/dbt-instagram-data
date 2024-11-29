{{ config(schema='dbt_analytics') }}

    SELECT 
        USERNAME,
        COMMENT_COUNT,
        SUM(COMMENT_COUNT) OVER (PARTITION BY USERNAME) total_sum
    FROM {{ ref('stg_instagram_posts') }}
    
    