#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_standard_occupational_classification_2020 \
        code:string:index \
        title:string:index \
        definition:string \
    --force \
    --no-timestamps \

