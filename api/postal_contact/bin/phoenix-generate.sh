#!/bin/sh
set -euf

mix phx.gen.html \
    None PostalContact None \
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
        freeform:textNone \
        country_text:textNone \
        country_subdivision_text:textNone \
        district_text:textNone \
        locality_text:textNone \
        locality_subdivision_text:textNone \
        neighborhood_text:textNone \
        postal_code_text:textNone \
        street_address_text:textNone \
        premise_address_text:textNone \
        global_location_number_text:textNone \
    --force \
    --no-timestamps \

