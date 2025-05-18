#!/bin/sh
set -euf

rails generate scaffold \
    software_package_data_exchange_license \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        code:string:index \
    --force \
    --no-timestamps \

