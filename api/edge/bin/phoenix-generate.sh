#!/bin/sh
set -euf

mix phx.gen.html \
    Graph Edge None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
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
        subject_uri:textNone \
        subject_database:textNone \
        subject_schema:textNone \
        subject_table:textNone \
        subject_id:idNone \
        predicate_uri:textNone \
        predicate_database:textNone \
        predicate_schema:textNone \
        predicate_table:textNone \
        predicate_id:idNone \
        object_uri:textNone \
        object_database:textNone \
        object_schema:textNone \
        object_table:textNone \
        object_id:idNone \
        start_at_timestamp_utc:timestampNone \
        stop_at_timestamp_utc:timestampNone \
        count:integerNone \
        unit_interval:unit_intervalNone \
        dual_interval:dual_intervalNone \
    --force \
    --no-timestamps \

