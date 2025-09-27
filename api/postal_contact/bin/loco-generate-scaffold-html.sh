#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    postal_contact \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        sign:"string{1}" \
        kind:string \
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        avatar_image_400x400_url:url \
        avatar_image_400x400_alt:url \
        main_image_1080x1080_url:url \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:url \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:url \
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

