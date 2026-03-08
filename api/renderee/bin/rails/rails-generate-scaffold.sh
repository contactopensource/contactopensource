#!/bin/sh
set -euf

rails generate scaffold \
    renderee \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        renderer_id:references \
        input_media_type_id:references \
        input_as_json:text \
        input_as_text:text \
        input_as_url:text \
        output_media_type_id:references \
        output_as_json:text \
        output_as_text:text \
        output_as_url:text \
    --force \
    --no-timestamps \

