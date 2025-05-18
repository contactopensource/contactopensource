#!/bin/sh
set -euf

rails generate scaffold \
    codec \
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
        name:text \
        code:text \
        icon:text \
        link:text \
        note:text \
        creator_name:text \
        prefer_file_extension:text \
        prefer_media_type_id:references \
        lossy_flag:boolean \
        floss_flag:boolean \
        fixed_bit_rate:decimal \
        variable_bit_rate_minimum:decimal \
        variable_bit_rate_maximum:decimal \
        fixed_channel_count:integer \
        variable_channel_count_minimum:integer \
        variable_channel_count_maximum:integer \
    --force \
    --no-timestamps \

