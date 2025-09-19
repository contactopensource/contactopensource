#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    card \
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:string \
        description:text \
        disambiguation:text \
        image_1080x1080_url:url \
        image_1080x1080_alt:text \
        emoji:text \
        star_count:integer \

