#!/bin/sh
set -euf

rails generate scaffold \
    international_standard_classification_of_occupations_2008 \
        group:string:index \
        code:string:index \
        title:string:index \
        definition:stringNone \
    --force \
    --no-timestamps \

