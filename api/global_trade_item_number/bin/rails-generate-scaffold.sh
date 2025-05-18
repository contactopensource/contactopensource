#!/bin/sh
set -euf

rails generate scaffold \
    global_trade_item_number \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:string \
        description:text \
        disambiguation:text \
        image_1024x1024_url:text \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        code:digit(14):index \
        prefix:digit(3):index \
        item:digit(9):index \
        check_digit:digit(1) \
        indicator_digit:digit(1) \
    --force \
    --no-timestamps \

