#!/bin/sh
set -euf

rails generate scaffold \
    event \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        title:string:index \
        subtitle:string:index \
        summary:string \
        description:text \
        disambiguation:text \
        avatar_image_400x400_url:text \
        avatar_image_400x400_alt:text \
        main_image_1080x1080_url:text \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:text \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:text \
        main_image_1080x1920_alt:text \
        emoji:text \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        start_timestamp_local:timestamp \
        stop_timestamp_local:timestamp \
        start_timestamp_utc:timestamp \
        stop_timestamp_utc:timestamp \
        duration_as_seconds:count \
        recurring:boolean \
        recurring_description:text \
    --force \
    --no-timestamps \

