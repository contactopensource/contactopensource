#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_civil_service_grade \
        step:integer:index \
        label:string:index \
        abbreviation:string:index \
        minimum_salary:integer \
        definition:string \
    --force \
    --no-timestamps \

