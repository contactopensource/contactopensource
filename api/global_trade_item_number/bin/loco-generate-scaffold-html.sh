#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    global_trade_item_number \
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
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:string \
        description:text \
        disambiguation:text \
        image_1024x1024_url:url \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        code:digit(14) \
        prefix:digit(3) \
        item:digit(9) \
        check_digit:digit(1) \
        indicator_digit:digit(1) \

