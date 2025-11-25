#!/bin/sh
set -euf

rails generate scaffold \
    uptime_percentage \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        actual:numeric(7,2):index \
        target:numeric(7,2):index \
        ratio:numeric(7,2):index \
        unit:string \
        description:string \
    --force \
    --no-timestamps \

