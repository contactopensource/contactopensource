#!/bin/sh
set -euf

rails generate scaffold \
    content_video \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        name:"string{50}":index \
        subname:"string{50}":index \
        slug:"string{72}":index \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        sign:text(1):index \
        kind:string:index \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        avatar_image_400x400_url:text \
        avatar_image_400x400_alt:text \
        main_image_1080x1080_url:text \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:text \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:text \
        main_image_1080x1920_alt:text \
        codec_id:references \
        width_as_pixels:count:index \
        height_as_pixels:count:index \
        duration_as_seconds:count:index \
    --force \
    --no-timestamps \

