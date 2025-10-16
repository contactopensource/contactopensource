#!/bin/sh
set -euf

rails generate scaffold \
    software_package_data_exchange_license \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        code:string:index \
    --force \
    --no-timestamps \

