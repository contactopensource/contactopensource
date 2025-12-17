#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    international_standard_classification_of_occupations_2008 \
        code:string \
        name:string \
        definition_as_markdown:markdown \

