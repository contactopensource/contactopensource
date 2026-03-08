#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    renderee \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_code:string \
        tagging:string \
        renderer_id:references \
        input_media_type_id:references:media_type \
        input_as_json:text \
        input_as_text:text \
        input_as_url:text \
        output_media_type_id:references:media_type \
        output_as_json:text \
        output_as_text:url \
        output_as_url:url \

