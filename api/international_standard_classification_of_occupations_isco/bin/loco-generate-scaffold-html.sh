#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    international_standard_classification_of_occupations_isco_2008 \
        group:string \
        code:string \
        title:string \
        definition:string \

