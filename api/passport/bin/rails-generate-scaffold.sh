#!/bin/sh
set -euf

rails generate scaffold \
    passport \
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
        image_1080x1080_url:text \
        image_1080x1080_alt:text \
        emoji:text \
        star_count:integer \
        country_id:references \
        number_text:text:index \
        start_date:date \
        stop_date:date \
        four_corner_open_photo_url:text \
        four_corner_face_photo_url:text \
    --force \
    --no-timestamps \

