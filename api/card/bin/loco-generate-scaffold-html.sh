#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    card \
        name:"string{50}" \
        subname:"string{50}" \
        slug:"string{72}" \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        sign:text(1) \
        kind:string \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        avatar_image_400x400_url:url \
        avatar_image_400x400_alt:url \
        main_image_1080x1080_url:url \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:url \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:url \
        main_image_1080x1920_alt:text \

