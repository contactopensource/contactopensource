#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    microdata_item \
        id:bigint \
        zid:uuid \
        lock_version:int \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        itemtype:URL \
        itemprop:text \

