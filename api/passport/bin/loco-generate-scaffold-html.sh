#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    passport \
        id:uuid \
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
        country_id:references \
        number_text:text \
        start_date:date \
        stop_date:date \
        four_corner_open_photo_url:url \
        four_corner_face_photo_url:url \

