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
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:"string{255}" \
        description:text \
        disambiguation:text \
        image_1024x1024_url:url \
        image_1024x1024_alt:text \
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
        recurring_desecription:text \

