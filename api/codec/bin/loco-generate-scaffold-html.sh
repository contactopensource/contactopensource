#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    codec \
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
        name:text \
        code:text \
        icon:text \
        link:text \
        note:text \
        creator_name:text \
        prefer_file_extension:text \
        prefer_media_type_id:references:media_type \
        lossy_flag:boolean \
        floss_flag:boolean \
        fixed_bit_rate:decimal \
        variable_bit_rate_minimum:decimal \
        variable_bit_rate_maximum:decimal \
        fixed_channel_count:integer \
        variable_channel_count_minimum:integer \
        variable_channel_count_maximum:integer \

