#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_states_bureau_of_labor_statistics_standard_occupational_classification_2018 \
        group:string \
        code:string \
        title:string \
        definition:text \

