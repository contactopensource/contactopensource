#!/bin/sh
set -euf

rails generate scaffold united_states_bureau_of_labor_statistics_standard_occupational_classification_2018 \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    group:string:index \
    code:string:index \
    title:string:index \
    definition:text \
