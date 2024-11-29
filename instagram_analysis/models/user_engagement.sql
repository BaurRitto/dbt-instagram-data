{{ config(materialized='table') }}

SELECT
    USERNAME,
    COUNT(DISTINCT CODE) AS total_posts,
    SUM(IG_PLAY_COUNT) AS total_plays,
    SUM(COMMENT_COUNT) AS total_comments,
    SUM(LIKE_COUNT) AS total_likes,
    SUM(RESHARE_COUNT) AS total_reshares,
    MAX(CREATED_AT_UTC) AS last_post_date
FROM {{ ref('stg_instagram_posts') }}
GROUP BY USERNAME
