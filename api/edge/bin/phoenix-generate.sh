#!/bin/sh
set -euf

mix phx.gen.html \
    Graph Edge None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        name:"string{50}":index \
        subname:"string{50}":index \
        summary:"string{72}"None \
        description:textNone \
        disambiguation:textNone \
        sign:"string{1}":index \
        kind:string:index \
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
        quick_response_code_id:referencesNone \
        universal_product_code_id:referencesNone \
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
        start_at_timestamp_utc:timestamp_utc_usecNone \
        stop_at_timestamp_utc:timestamp_utc_usecNone \
        count:integerNone \
        unit_interval:unit_intervalNone \
        dual_interval:dual_intervalNone \
    --force \
    --no-timestamps \

