{{ config(materialized='view') }}

SELECT
    USERNAME,
    FULL_NAME,
    ID,
    PROFILE_PIC_URL,
    MEDIA_TYPE,
    TEXT,
    CREATED_AT_UTC,
    CODE,
    IG_PLAY_COUNT,
    PRODUCT_TYPE,
    COMMENT_COUNT,
    LIKE_COUNT,
    VIDEO_SUBTITLES_LOCALE,
    HAS_AUDIO,
    VIDEO_VERSIONS_URL,
    RESHARE_COUNT,
    SOURCE_FILE_NAME,
    FILE_LAST_MODIFIED,
    LOAD_TS
FROM {{ source('instagram_data', 'instagram_posts') }}
