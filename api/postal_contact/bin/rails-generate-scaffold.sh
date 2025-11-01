#!/bin/sh
set -euf

rails generate scaffold \
    postal_contact \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        name:"string{50}":index \
        subname:"string{50}":index \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        sign:"string{1}":index \
        kind:string:index \
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
        freeform:text \
        country_text:text \
        country_subdivision_text:text \
        district_text:text \
        locality_text:text \
        locality_subdivision_text:text \
        neighborhood_text:text \
        postal_code_text:text \
        street_address_text:text \
        premise_address_text:text \
        global_location_number_text:text \
    --force \
    --no-timestamps \

