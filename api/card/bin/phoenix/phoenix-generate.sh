#!/bin/sh
set -euf

mix phx.gen.html \
    None Card None \
        name:"string{50}":index \
        subname:"string{50}":index \
        slug:"string{72}":index \
        summary:"string{72}"None \
        description:textNone \
        disambiguation:textNone \
        sign:text(1):index \
        kind:string:index \
        star_count:integerNone \
        quick_response_code_id:referencesNone \
        universal_product_code_id:referencesNone \
        avatar_image_400x400_url:urlNone \
        avatar_image_400x400_alt:urlNone \
        main_image_1080x1080_url:urlNone \
        main_image_1080x1080_alt:textNone \
        main_image_1920x1080_url:urlNone \
        main_image_1920x1080_alt:textNone \
        main_image_1080x1920_url:urlNone \
        main_image_1080x1920_alt:textNone \
    --force \
    --no-timestamps \

