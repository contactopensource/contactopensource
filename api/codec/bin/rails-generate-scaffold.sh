#!/bin/sh
set -euf

rails generate scaffold \
    codec \
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
        name:textNone \
        code:textNone \
        icon:textNone \
        link:textNone \
        note:textNone \
        creator_name:textNone \
        prefer_file_extension:textNone \
        prefer_media_type_id:media_type.idNone \
        lossy_flag:booleanNone \
        floss_flag:booleanNone \
        fixed_bit_rate:decimalNone \
        variable_bit_rate_minimum:decimalNone \
        variable_bit_rate_maximum:decimalNone \
        fixed_channel_count:integerNone \
        variable_channel_count_minimum:integerNone \
        variable_channel_count_maximum:integerNone \
    --force \
    --no-timestamps \

