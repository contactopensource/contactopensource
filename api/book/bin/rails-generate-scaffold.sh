#!/bin/sh
set -euf

rails generate scaffold \
    book \
        id:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:stringNone \
        description:textNone \
        disambiguation:textNone \
        image_1024x1024_url:urlNone \
        image_1024x1024_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
        title:textNone \
        subtitle:textNone \
        global_trade_item_number_id:global_trade_item_number.idNone \
        international_standard_book_number_id:international_standard_book_number.idNone \
    --force \
    --no-timestamps \

