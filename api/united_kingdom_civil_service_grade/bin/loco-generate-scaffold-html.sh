#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_kingdom_civil_service_grade \
        step:integer \
        label:string \
        abbreviation:string \
        minimum_salary:integer \
        definition:string \

