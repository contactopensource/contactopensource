#!/bin/sh
set -euf

rails generate scaffold \
    postal_contact \
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

