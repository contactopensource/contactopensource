#!/bin/sh
set -euf

mix phx.gen.html \
    None PhoneContact None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
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
        quick_response_code_id:quick_response_code.idNone \
        universal_product_code_id:universal_product_code.idNone \
        label:textNone \
        number_text:text:index \
        e164_text:"string{15}":index \
        e164_country_code:"string{3}":index \
        e164_national_destination_code:"string{13}":index \
        e164_group_identification_code:"string{4}"None \
        e164_trial_identification_code:"string{3}"None \
        e164_subscriber_number:"string{14}"None \
    --force \
    --no-timestamps \

