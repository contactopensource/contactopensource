#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    microdata_item \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        itemtype:URL \
        itemprop:text \

