#!/bin/sh
set -euf

rails generate scaffold \
    microdata_item \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        itemtype:URL \
        itemprop:text \
    --force \
    --no-timestamps \

