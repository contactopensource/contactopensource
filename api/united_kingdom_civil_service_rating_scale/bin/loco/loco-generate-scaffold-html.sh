#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_kingdom_civil_service_rating_scale \
        rating:integer \
        label:string \
        definition:string \

