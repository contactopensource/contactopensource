#!/bin/sh
set -euf

rails generate scaffold \
    phone_contact \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        title:string:index \
        subtitle:string:index \
        summary:string \
        description:text \
        disambiguation:text \
        avatar_image_400x400_url:text \
        avatar_image_400x400_alt:text \
        main_image_1080x1080_url:text \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:text \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:text \
        main_image_1080x1920_alt:text \
        emoji:text \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        label:text \
        number_text:text:index \
        e164_text:string:index \
        e164_country_code:string:index \
        e164_national_destination_code:string:index \
        e164_group_identification_code:string \
        e164_trial_identification_code:string \
        e164_subscriber_number:string \
    --force \
    --no-timestamps \

