#!/bin/sh
set -euf

rails generate scaffold \
    quick_response_code \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        code:string:index \
        image_url:text \
        image_alt:text \
    --force \
    --no-timestamps \

