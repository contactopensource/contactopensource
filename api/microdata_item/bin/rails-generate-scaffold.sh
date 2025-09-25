#!/bin/sh
set -euf

rails generate scaffold \
    microdata_item \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        itemtype:URL \
        itemprop:text \
    --force \
    --no-timestamps \

