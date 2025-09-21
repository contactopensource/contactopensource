#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    software_package_data_exchange_license \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        code:string \

