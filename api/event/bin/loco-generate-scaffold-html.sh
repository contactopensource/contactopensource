#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    event \
        id:uuid \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        title:string \
        subtitle:string \
        summary:string \
        description:text \
        disambiguation:text \
        avatar_image_400x400_url:url \
        avatar_image_400x400_alt:url \
        main_image_1080x1080_url:url \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:url \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:url \
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

