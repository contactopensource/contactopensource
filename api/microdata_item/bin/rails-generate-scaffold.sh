#!/bin/sh
set -euf

rails generate scaffold \
    microdata_item \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        itemtype:URL \
        itemprop:text \
    --force \
    --no-timestamps \

