#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    codec \
        id:bigint NOT NULL \
        zid:uuid NOT NULL \
        lock_version:int NOT NULL \
        created_at:timestamp NOT NULL \
        created_by:url NOT NULL \
        updated_at:timestamp NOT NULL \
        updated_by:url NOT NULL \
        retired_at:timestamp NOT NULL \
        retired_by:url NOT NULL \
        locale_id:references NOT NULL \
        title:"string{50}" NOT NULL \
        subtitle:"string{50}" NOT NULL \
        summary:string NOT NULL \
        description:text NOT NULL \
        disambiguation:text NOT NULL \
        image_1024x1024_url:url NOT NULL \
        image_1024x1024_alt:text NOT NULL \
        emoji:text NOT NULL \
        star_count:integer NOT NULL \
        name:text NOT NULL \
        code:text NOT NULL \
        icon:text NOT NULL \
        link:text NOT NULL \
        note:text NOT NULL \
        creator_name:text NOT NULL \
        prefer_file_extension:text NOT NULL \
        prefer_media_type_id:references:media_type NOT NULL \
        lossy_flag:boolean NOT NULL \
        floss_flag:boolean NOT NULL \
        fixed_bit_rate:decimal NOT NULL \
        variable_bit_rate_minimum:decimal NOT NULL \
        variable_bit_rate_maximum:decimal NOT NULL \
        fixed_channel_count:integer NOT NULL \
        variable_channel_count_minimum:integer NOT NULL \
        variable_channel_count_maximum:integer NOT NULL \

