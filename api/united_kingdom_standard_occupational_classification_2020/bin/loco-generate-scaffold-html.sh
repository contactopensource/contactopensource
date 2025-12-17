#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_kingdom_standard_occupational_classification_2020 \
        code:string \
        title:string \
        definition:string \

