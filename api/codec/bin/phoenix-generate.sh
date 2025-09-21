#!/bin/sh
set -euf

mix phx.gen.html \
    None Codec None \
        id:uuid:index \
        sign:charNone \
        lock_version:integerNone \
        created_at:timestamp_utc_usecNone \
        created_by:urlNone \
        updated_at:timestamp_utc_usecNone \
        updated_by:urlNone \
        retired_at:timestamp_utc_usecNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        title:string:index \
        subtitle:string:index \
        summary:stringNone \
        description:textNone \
        disambiguation:textNone \
        avatar_image_400x400_url:urlNone \
        avatar_image_400x400_alt:urlNone \
        main_image_1080x1080_url:urlNone \
        main_image_1080x1080_alt:textNone \
        main_image_1920x1080_url:urlNone \
        main_image_1920x1080_alt:textNone \
        main_image_1080x1920_url:urlNone \
        main_image_1080x1920_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
        quick_response_code_id:quick_response_code.idNone \
        universal_product_code_id:universal_product_code.idNone \
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

