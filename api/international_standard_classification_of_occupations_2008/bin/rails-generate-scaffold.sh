#!/bin/sh
set -euf

rails generate scaffold \
    international_standard_classification_of_occupations_2008 \
        code:string:index \
        name:string:index \
        definition_as_markdown:markdown \
    --force \
    --no-timestamps \

