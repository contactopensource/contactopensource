#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_civil_service_rating_scale \
        rating:integer:index \
        label:string:index \
        definition:string \
    --force \
    --no-timestamps \

