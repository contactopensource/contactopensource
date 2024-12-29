#!/bin/sh
set -euf

cargo loco generate scaffold \
    united_states_bureau_of_labor_statistics_standard_occupational_classification_2018 \
    --force \
    --no-timestamps \

