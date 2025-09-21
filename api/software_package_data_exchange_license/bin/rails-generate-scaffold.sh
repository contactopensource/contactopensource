#!/bin/sh
set -euf

rails generate scaffold \
    software_package_data_exchange_license \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        code:string:index \
    --force \
    --no-timestamps \

